/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include "IdSolver.hpp"

/******************************************************************************
 *                                                                            *
 * add                                                                        *
 *                                                                            *
 ******************************************************************************/

void
Expression::add(const Integral& i, const Coefficient& coeff)
{
  if (coeff.null()) return;

  // copy on write implementation
  if (_value->_ref_count > 1)
    {
      --_value->_ref_count;
      _value = new ExpressionValue(*_value);
    }

  pair<TermPtr,bool> term_insert_stat=_value->_terms.insert(make_pair(i,coeff));
  TermPtr& t = term_insert_stat.first;

  if (!term_insert_stat.second)
    {
      t.coefficient() += coeff;
      if (t.coefficient().null())
	{
	  _value->_terms.erase(t);
	  if (_value->_terms.empty()) _value->_vanishing = true;
	}
    }
}

/******************************************************************************
 *                                                                            *
 * replace                                                                    *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Apply a set of rules to every coefficient. The rules are given as pairs of
 * (variable, value) and are applied in the order in which they are given.
 *
 */

void
Expression::replace(const vector<pair<string, string> >& rules)
{
  if (rules.empty() || _value->_terms.empty()) return;

  // copy on write implementation
  if (_value->_ref_count > 1)
    {
      --_value->_ref_count;
      _value = new ExpressionValue(*_value);
    }

  for (TermPtr t(_value->_terms.begin()); t != _value->_terms.end(); ++t)
    t.coefficient().replace(rules);
}

/******************************************************************************
 *                                                                            *
 * simplify                                                                   *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Simplification is recursive, i.e. we first simplify all of the integral
 * values which are referenced by the expression, and so on. This is the most
 * optimal scheme, since we do not have to update the whole system whenever
 * a new integral is solved, but we still have the shortest possible expressions
 * when integral values are actually used.
 *
 * The return value is true if the expression has been modified.
 *
 */

bool
Expression::simplify()
{
  if (_value->_terms.empty()) return false;
      
  if (equivalence_relation())
    {
      equivalent_integral().simplify_value();
      const Expression value = equivalent_integral().value();
      if (value.equivalence_relation())
	{
	  *this = value;
	  return true;
	}
    }
  else
    {
      bool has_assigned_integrals = false;
      bool has_equivalence_relations = false;

      // everything in three steps. first, recursive simplification

      for (TermPtr t(_value->_terms.begin()); t != _value->_terms.end(); ++t)
	if (t.integral().assigned())
	  {
	    t.integral().simplify_value();

	    if (t.integral().value().equivalence_relation()) 
	      has_equivalence_relations = true;
	    else 
	      has_assigned_integrals = true;
	  }
      
      // second, substitution of equivalent integrals

      Expression stage1(0);

      if (has_equivalence_relations)
	for (TermPtr t(_value->_terms.begin()); t != _value->_terms.end(); ++t)
	  {
	    if (t.integral().assigned())
	      {
		const Expression value = t.integral().value();
		if (value.equivalence_relation())
		  {
		    stage1.add(value.equivalent_integral(), t.coefficient());

		    if (value.equivalent_integral().assigned())
		      has_assigned_integrals = true;
		  }
		else
		  stage1.add(t.integral(), t.coefficient());
	      }
	    else
	      stage1.add(t.integral(), t.coefficient());
 	  }
      else
	stage1 = *this;
      
      // third, substitution of the remaining values
      
      if (has_assigned_integrals)
	{
	  Expression stage2(0);
	  
	  for (TermPtr t(stage1._value->_terms.begin());
	       t != stage1._value->_terms.end(); ++t)
	    if (t.integral().assigned())
	      {
		const Expression value = t.integral().value();
		for (TermConstPtr tsub(value._value->_terms.begin());
		     tsub!= value._value->_terms.end(); ++tsub)
		  {
		    stage2.add(tsub.integral(), 
			       t.coefficient()*tsub.coefficient());
		  }
	      }
	    else
	      stage2.add(t.integral(), t.coefficient());
	  
	  *this = stage2;
	  return true;
	}
      else if (has_equivalence_relations)
	{
	  *this = stage1;
	  return true;
	}
    }

  return false;
}

/******************************************************************************
 *                                                                            *
 * solve                                                                      *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The solution goes past equivalence relations, i.e. we solve the value
 * of the last integral in a chain of equivalence relations or we solve
 * this integral to zero if it is undefined.
 *
 */

pair<Integral, Expression> 
Expression::solve() const
{
  if (equivalence_relation())
    {
      const Expression value = equivalent_integral().value();
      if (!value.equivalence_relation() && !value.defined())
	return make_pair(equivalent_integral(), Expression(0));
      else
	return value.solve();
    }
  else
    {
      if (_value->_terms.empty()) return make_pair(Integral(), Expression());
      
      Integral i;
      
      for (TermConstPtr t(_value->_terms.begin());t != _value->_terms.end();++t)
	if (t == _value->_terms.begin() || i.less_than(t.integral()))
	  i = t.integral();
      
      return make_pair(i, solve(i));
    }
}

Expression
Expression::solve(const Integral& i) const
{
  if (equivalence_relation())
    {
      const Expression value = equivalent_integral().value();
      if (!value.equivalence_relation() && !value.defined())
	{
	  if (equivalent_integral() == i)
	    return Expression(0);
	  else
	    return Expression();
	}
      else
	return value.solve(i);
    }
  else
    {
      TermConstPtr term(_value->_terms.find(i));
      if (term == _value->_terms.end()) return Expression();
      if (_value->_terms.size() == 1) return Expression(0);
      
      Expression result(0);
      
      for (TermConstPtr t(_value->_terms.begin());t != _value->_terms.end();++t)
	if (t != term) 
	  result.add(t.integral(), -t.coefficient()/term.coefficient());
      
      return result;
    }
}

/******************************************************************************
 *                                                                            *
 * null                                                                       *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * If there is an equivalence relation, then if the last integral has a value,
 * this value is tested, otherwise, the expression is considered not null.
 * 
 */

bool
Expression::null() const
{
  if (equivalence_relation())
    return equivalent_integral().value().null();
  else
    return _value->_terms.empty() && _value->_vanishing;
}

/******************************************************************************
 *                                                                            *
 * integrals                                                                  *
 *                                                                            *
 ******************************************************************************/

vector<Integral>
Expression::integrals() const
{
  if (equivalence_relation())
    {
      const Expression value = equivalent_integral().value();
      if (!value.equivalence_relation() && !value.defined())
	return vector<Integral>(1, equivalent_integral());
      else
	return value.integrals();
    }
  else
    {
      vector<Integral> ints;
      
      for (TermConstPtr t(_value->_terms.begin());t != _value->_terms.end();++t)
	ints.push_back(t.integral());
      
      return ints;
    }
}

/******************************************************************************
 *                                                                            *
 * terms                                                                      *
 *                                                                            *
 ******************************************************************************/

vector<pair<Integral, Coefficient> >
Expression::terms() const
{
  if (equivalence_relation())
    {
      const Expression value = equivalent_integral().value();
      if (!value.equivalence_relation() && !value.defined())
	return
	  vector<pair<Integral, Coefficient> >
            (1, make_pair(equivalent_integral(), "1"));
      else
	return value.terms();
    }
  else
    {
      vector<pair<Integral, Coefficient> > ts;
      
      for (TermConstPtr t(_value->_terms.begin());t != _value->_terms.end();++t)
	ts.push_back(make_pair(t.integral(), t.coefficient()));
      
      return ts;
    }
}

/******************************************************************************
 *                                                                            *
 * write                                                                      *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The format of an expression in the buffer is
 *
 * +-----------------------+----------+--------------------+-------+----
 * | 4 bytes integral size | integral | 4 bytes coeff size | coeff | ...
 * +-----------------------+----------+--------------------+-------+----
 *
 * or if the first byte is 0, then the expression is zero. The return value
 * is the number of bytes written. Notice that this representation is 
 * architecture dependent, since the byte ordering and the size of int may
 * vary. The only safe way to transmit results between architectures is through
 * text files currently (obtained with print()).
 *
 */

int
Expression::write(ResizableBuffer& buffer) const
{
  if (!defined()) return 0;

  if (null())
    {
      if (buffer.free() < sizeof(int8)) buffer.reserve(sizeof(int8));
      *buffer._end_of_data = 0;
      buffer._end_of_data += sizeof(int8);
      return sizeof(int8);
    }

  const int initial_size = buffer.size();

  for (TermConstPtr t(_value->_terms.begin()); t != _value->_terms.end(); ++t)
    {
      // once we know the size of the integral data we can write it, but
      // before we need to keep the position, since pointers may be invalidated
      // by buffer resizing;

      int pos = buffer.size();
      if (buffer.free() < sizeof(int)) buffer.reserve(sizeof(int));
      buffer._end_of_data += sizeof(int);

      const int i_size = t.integral().write(buffer);
      *((int*) (buffer._begin+pos)) = i_size;

      // same for the coefficient

      pos = buffer.size();
      if (buffer.free() < sizeof(int)) buffer.reserve(sizeof(int));
      buffer._end_of_data += sizeof(int);

      const int coeff_size = t.coefficient().write(buffer);
      *((int*) (buffer._begin+pos)) = coeff_size;
    }

  return buffer.size()-initial_size;
}

/******************************************************************************
 *                                                                            *
 * print                                                                      *
 *                                                                            *
 ******************************************************************************/

void
Expression::print(ostream& output) const
{
  if (equivalence_relation())
    {
      const Expression value = equivalent_integral().value();
      if (!value.equivalence_relation() && !value.defined())
	output << " + " << equivalent_integral() << " * (1)\n" ;
      else
	value.print(output);
    }
  else
    {
      if (null())
	{
	  output << "0\n";
	}
      else if (defined())
	{
	  for(TermConstPtr t(_value->_terms.begin());t!=_value->_terms.end();++t)
	    {
	      if (t != _value->_terms.begin()) output << "\n";
	      output << " + " << t.integral() 
		     << " * (" << t.coefficient() << ")\n";
	    }
	}
    }
}

/******************************************************************************
 *                                                                            *
 * dump                                                                       *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Same as print(), but prints the equivalence relations as they are in memory
 *
 */

void
Expression::dump(ostream& output) const
{
  if (_value->_terms.empty())
    {
      if (_value->_vanishing) output << "0\n";
      return;
    }

  for(TermConstPtr t(_value->_terms.begin()); t != _value->_terms.end(); ++t)
    {
      if (t != _value->_terms.begin()) output << "\n";
      output << " + " << t.integral() 
	     << " * (" << t.coefficient() << ")\n";
    }
}
