/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include "IdSolver.hpp"

/******************************************************************************
 *                                                                            *
 * static data members                                                        *
 *                                                                            *
 ******************************************************************************/

IntegralMap::IntegralStorage Integral::_default;

/******************************************************************************
 *                                                                            *
 * destructor                                                                 *
 *                                                                            *
 ******************************************************************************/

Integral::~Integral()
{
  if (defined() && --_integral.entry()._ref_count == 0 && 
      _integral.entry()._stored)
    {
      IntegralMap::IdentifierEntry& id = _integral.entry()._identifier.entry();
      if (_integral.entry().assigned())
	--id._integral_map._n_assigned_integrals;
      else
	--id._integral_map._n_unassigned_integrals;
      id._integrals.erase(_integral);
    }
}

/******************************************************************************
 *                                                                            *
 * operator=                                                                  *
 *                                                                            *
 ******************************************************************************/

Integral&
Integral::operator=(const Integral& i)
{
  if (this == &i) return *this;

  if (defined() && --_integral.entry()._ref_count == 0 && 
      _integral.entry()._stored)
    {
      IntegralMap::IdentifierEntry& id = _integral.entry()._identifier.entry();
      if (_integral.entry().assigned())
	--id._integral_map._n_assigned_integrals;
      else
	--id._integral_map._n_unassigned_integrals;
      id._integrals.erase(_integral);
    }

  _integral = i._integral;
  if (i.defined()) ++i._integral.entry()._ref_count;

  return *this;
}

/******************************************************************************
 *                                                                            *
 * operator<                                                                  *
 *                                                                            *
 ******************************************************************************/

bool
Integral::operator<(const Integral& i) const
{
  if (!defined() || !i.defined()) return false;

  const string& identifier = _integral.entry()._identifier.str();
  const string& i_identifier = i._integral.entry()._identifier.str();

  int identifier_comparison = identifier.compare(i_identifier);

  if (identifier_comparison)
    return identifier_comparison < 0;
  else
    return _integral.powers() < i._integral.powers();
}

/******************************************************************************
 *                                                                            *
 * less_than                                                                  *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Lexicographic ordering more or less like in the original Laporta paper.
 *
 */

bool
Integral::less_than(const Integral& i) const
{
  if (!defined() || !i.defined()) return false;

  if (_integral.powers().size() != i._integral.powers().size())
    {
      cerr << "Integral::less_than: " << *this << ", " 
	   << i << " argument list mismatch" << endl;

      exit(1);
    }

  int n_denominators = 0, i_n_denominators = 0;
  int sum_denominator_powers = 0, i_sum_denominator_powers = 0;
  int sum_numerator_powers = 0, i_sum_numerator_powers = 0;
  vector<int> denominator_position, i_denominator_position;

  for (int j = 0; j < _integral.powers().size(); ++j)
    {
      if (_integral.powers()[j] > 0)
	{
	  ++n_denominators;
	  sum_denominator_powers += _integral.powers()[j]-1;
	  denominator_position.push_back(j);
	}
      else if (_integral.powers()[j] < 0)
	{
	  sum_numerator_powers += -_integral.powers()[j];
	}
      if (i._integral.powers()[j] > 0)
	{
	  ++i_n_denominators;
	  i_sum_denominator_powers += i._integral.powers()[j]-1;
	  i_denominator_position.push_back(j);
	}
      else if (i._integral.powers()[j] < 0)
	{
	  i_sum_numerator_powers += -i._integral.powers()[j];
	}
    }

  if (_integral.entry()._identifier.entry()._integral_map._options &
      IntegralMap::LaportaOrdering)
    {
      n_denominators = _integral.entry()._identifier.entry()._n_denominators;
      i_n_denominators= i._integral.entry()._identifier.entry()._n_denominators;
    }

  if (n_denominators != i_n_denominators)
    return n_denominators < i_n_denominators;

  if (_integral.entry()._identifier.entry()._integral_map._options &
      IntegralMap::LaportaOrdering)
    {
      if (sum_numerator_powers != i_sum_numerator_powers)
	return sum_numerator_powers < i_sum_numerator_powers;

      int last = _integral.powers()[n_denominators-1]-1;
      int i_last = i._integral.powers()[i_n_denominators-1]-1;

      if (sum_denominator_powers-last != i_sum_denominator_powers-i_last)
	return sum_denominator_powers-last < i_sum_denominator_powers-i_last;

      if (last != i_last)
	return last < i_last;
    }
  else if (_integral.entry()._identifier.entry()._integral_map._options &
      IntegralMap::SolveNumerators)
    {
      if (sum_numerator_powers != i_sum_numerator_powers)
	return sum_numerator_powers < i_sum_numerator_powers;

      if (sum_denominator_powers != i_sum_denominator_powers)
	return sum_denominator_powers < i_sum_denominator_powers;
    }
  else
    {
      if (sum_denominator_powers != i_sum_denominator_powers)
	return sum_denominator_powers < i_sum_denominator_powers;

      if (sum_numerator_powers != i_sum_numerator_powers)
	return sum_numerator_powers < i_sum_numerator_powers;
    }

  // the two below should be equivalent depending on the fomulation, i.e.
  // either names change, or positions of the denominators...

  if (_integral.entry()._identifier.str() != 
      i._integral.entry()._identifier.str())
    return _integral.entry()._identifier.str() <
      i._integral.entry()._identifier.str();

  if (! _integral.entry()._identifier.entry()._integral_map._options &
      IntegralMap::LaportaOrdering)
    {
      for (int j = 0; j < n_denominators; ++j)
	if (denominator_position[j] != i_denominator_position[j])
	  return denominator_position[j] < i_denominator_position[j];
    }

  for (int j = 0; j < _integral.powers().size(); ++j)
    if (_integral.powers()[j] > 0 && 
	_integral.powers()[j] != i._integral.powers()[j]) 
      return _integral.powers()[j] < i._integral.powers()[j];

  for (int j = 0; j < _integral.powers().size(); ++j)
    if (_integral.powers()[j] <= 0 && 
	_integral.powers()[j] != i._integral.powers()[j])
      return _integral.powers()[j] > i._integral.powers()[j];

  return false;
}

/******************************************************************************
 *                                                                            *
 * simplify_value                                                             *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Returns true if the value has changed.
 * Simplification on secondary storage is handled here. This is not a pretty
 * solution, but comes from the fact that an IntegralEntry does not know
 * the powers to which it is assigned.
 *
 */

bool
Integral::simplify_value() const
{
  if (!defined()) return false;

  bool status = _integral.entry().simplify_value();
  if (status && _integral.entry()._stored)
    _integral.entry().write(_integral.entry()._identifier.entry()._db,
			    _integral.powers());

  return status;
}

/******************************************************************************
 *                                                                            *
 * write                                                                      *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The format of an integral in the buffer is
 *
 * +-----------------------------------+----------------+
 * | identifier string terminated by 0 | list of powers |
 * +-----------------------------------+----------------+
 *
 * The return value is the number of bytes written.
 *
 */

int
Integral::write(ResizableBuffer& buffer) const
{
  if (!defined()) return 0;

  const string& id = _integral.entry()._identifier.str();
  const int i_size = 
    id.size()+_integral.powers().size()*sizeof(Power)+sizeof(int8);
  if (i_size > buffer.free()) buffer.reserve(i_size);

  id.copy(buffer._end_of_data, id.size());
  *(buffer._end_of_data+id.size()) = 0;

  Power* p = buffer._end_of_data+id.size()+sizeof(int8);
  for (vector<Power>::const_iterator pp = _integral.powers().begin();
       pp != _integral.powers().end(); ++p, ++pp) *p = *pp;

  buffer._end_of_data += i_size;
  return i_size;
}
