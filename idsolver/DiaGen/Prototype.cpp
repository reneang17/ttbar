/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include <map>
#include <sstream>
#include <algorithm>

#include "Prototype.hpp"

/******************************************************************************
 *                                                                            *
 * insert_edge                                                                *
 *                                                                            *
 ******************************************************************************/

void
Prototype::insert_edge(int source_node, int target_node, const string& mass)
{
  ScalarDiagram::insert_edge(source_node, target_node, mass);
  _normalized_momenta = false;
  _integral_edge_labelling.clear();
  _momentum_distribution.clear();
  _propagators.clear();
  _components.clear();
}

/******************************************************************************
 *                                                                            *
 * normalize_momenta                                                          *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * After assigning the momenta (if they were not yet assigned), eliminates
 * the lexicographically largest external momentum through the momentum 
 * conservation relation. Returns the position of the eliminated momentum
 * in the momentum basis.
 *
 * The normalization will be incomplete if the prototype is not connected,
 * since in this case there are independent relations for each component.
 *
 */

int
Prototype::normalize_momenta()
{
  if (_normalized_momenta) return _eliminated_momentum;

  assign_momenta();

  int n_loops = n_cycles();

  if (n_external_edges() == 0 && n_loops > 1)
    {
      integral_edge_labelling();

      for (vector<MomentumDescriptor>::iterator p = 
	     _momentum_distribution.begin(); 
	   p!=_momentum_distribution.end(); ++p)
	{
	  vector<int> momentum;
	  for (int i = 0; i < p->_momentum.size(); ++i)
	    momentum.push_back(p->_dir*p->_momentum[i]);
	  _edge_desc[p->_edge]._momentum = momentum;
	}

      _eliminated_momentum = -1;
      return _eliminated_momentum;
    }

  const int n_external_momenta = _momentum_basis.size()-n_loops;
  if (n_external_momenta < 3)
    {
      _normalized_momenta = true;
      _eliminated_momentum = -1;
      return _eliminated_momentum;
    }

  map<string, int> sorted_momenta;
  for (int i = 0; i < n_external_momenta; ++i)
    sorted_momenta[_momentum_basis[i]] = i;

  const int pos = sorted_momenta.rbegin()->second;
  const vector<int> relation = momentum_conservation_relation();

  for (int e = 0; e < n_edges(); ++e)
    if (!is_external_edge(e) && _edge_desc[e]._momentum[pos] != 0)
      {
	const int sign = 
	  _edge_desc[e]._momentum[pos]*relation[pos];

	for (int i = 0; i < n_external_momenta; ++i)
	  _edge_desc[e]._momentum[i] -= sign*relation[i];
      }

  _normalized_momenta = true;
  _eliminated_momentum = pos;
  return _eliminated_momentum;
}

/******************************************************************************
 *                                                                            *
 * independent_momenta                                                        *
 *                                                                            *
 ******************************************************************************/

vector<string>
Prototype::independent_momenta()
{
  vector<string> momenta;

  const int pos = normalize_momenta();
  const int n_momenta = _momentum_basis.size();

  for (int i = 0; i < n_momenta; ++i)
    if (i != pos) momenta.push_back(_momentum_basis[i]);

  return momenta;
}

/******************************************************************************
 *                                                                            *
 * independent_external_momenta                                               *
 *                                                                            *
 ******************************************************************************/

vector<string>
Prototype::independent_external_momenta()
{
  vector<string> momenta;

  const int pos = normalize_momenta();
  const int n_momenta = _momentum_basis.size()-n_cycles();

  for (int i = 0; i < n_momenta; ++i)
    if (i != pos) momenta.push_back(_momentum_basis[i]);

  return momenta;
}

/******************************************************************************
 *                                                                            *
 * loop_momenta                                                               *
 *                                                                            *
 ******************************************************************************/

vector<string>
Prototype::loop_momenta()
{
  assign_momenta();

  return vector<string>(_momentum_basis.rbegin(),
			_momentum_basis.rbegin()+n_cycles());
}

/******************************************************************************
 *                                                                            *
 * n_scalars                                                                  *
 *                                                                            *
 ******************************************************************************/

int
Prototype::n_scalars() const
{
  const int n_loop_momenta = n_cycles();

  int n_external_momenta = _momentum_basis.size()-n_loop_momenta;
  if (n_external_momenta > 2) --n_external_momenta;

  return n_loop_momenta*(n_loop_momenta+2*n_external_momenta+1)/2;
}

/******************************************************************************
 *                                                                            *
 * momentum_conservation_relation                                             *
 *                                                                            *
 ******************************************************************************/

vector<int>
Prototype::momentum_conservation_relation()
{
  assign_momenta();

  const int n_external_momenta = _momentum_basis.size()-n_cycles();
  vector<int> relation(n_external_momenta);
  if (n_external_momenta < 3) return relation;

  pair<vector<int>, vector<int> > edges = external_edges();

  for (vector<int>::iterator e=edges.first.begin(); e != edges.first.end(); ++e)
    for (int i = 0; i < n_external_momenta; ++i)
      relation[i] += _edge_desc[*e]._momentum[i];
  
  for (vector<int>::iterator e=edges.second.begin();e!= edges.second.end(); ++e)
    for (int i = 0; i < n_external_momenta; ++i)
      relation[i] -= _edge_desc[*e]._momentum[i];

  return relation; 
}

/******************************************************************************
 *                                                                            *
 * integral_edge_labelling                                                    *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * A labelling that is as close as possible to a uniqueness in the sense of
 * integrals. At present this criterion is only fulfilled for vacuum prototypes
 * and propagator prototypes. The others are topologically unique modulo
 * tadpoles and external momentum symmeteries as in scalar_compare.
 *
 */

vector<pair<int, int> > 
Prototype::integral_edge_labelling() const
{
  if (!_integral_edge_labelling.empty()) return _integral_edge_labelling;

  validate();

  if (n_external_edges() == 0 && n_cycles() > 1)
    {
      /****************************************
       *
       * tadpoles
       *
       */

      _momentum_distribution = minimize_momentum_distribution();
	  
      for (vector<MomentumDescriptor>::iterator p = 
	     _momentum_distribution.begin();
	   p != _momentum_distribution.end(); ++p)
	{
	  _integral_edge_labelling.push_back(make_pair(p->_edge, p->_dir));
	}
    }
  else if (n_external_edges() == 2)
    {
      /****************************************
       *
       * propagators
       *
       */

      const int ne = n_edges();
      const int nl = n_cycles();
      const int n1 = n_external_edges();
      const int ni = ne-n1;

      Cell c1;
      c1._signed = false;
      for (int i = 0; i < nl; ++i)
	c1.push_back(make_pair(i,+1));

      Cell c2;
      c2._signed = false;
      for (int i = 0; i < n1; ++i)
	c2.push_back(make_pair(nl+i,+1));

      vector<Cell> partition;
      partition.push_back(c1);
      partition.push_back(c2);

      vector<int> permutation;
      for (int i = 0; i < ni-nl; ++i)
	permutation.push_back(i);

      vector<int> loop;
      for (int i = 0; i < nl; ++i) loop.push_back(i);

      for (;;)
	{
	  vector<int> momentum_by_edge(ne), edge_by_momentum(ne);
  
	  for (int e = 0, i = 0, j = 0, k = 0, l = 0; e < n_edges(); ++e)
	    if (is_external_edge(e))
	      momentum_by_edge[e] = ni+k++;
	    else if (find(loop.begin(), loop.end(), l++) != loop.end())
	      momentum_by_edge[e] = ni-nl+j++;
	    else
	      momentum_by_edge[e] = i++;

	  for (int e = 0; e < n_edges(); ++e)
	    edge_by_momentum[momentum_by_edge[e]] = e;

	  // momentum conservation relations at each node
	  
	  vector<vector<int> > equations(ni-nl, vector<int>(ne));
	  
	  for (int n = 0, i = 0; n < n_nodes() && i < ni-nl; ++n)
	    if (!is_external_node(n))
	      {
		pair<vector<int>, vector<int> >
		  adjacent_edges = this->adjacent_edges(n);
		
		for (vector<int>::iterator e = adjacent_edges.first.begin();
		     e != adjacent_edges.first.end(); ++e)
		  equations[i][momentum_by_edge[*e]] += 1;
		
		for (vector<int>::iterator e = adjacent_edges.second.begin();
		     e != adjacent_edges.second.end(); ++e)
		  equations[i][momentum_by_edge[*e]] -= 1;

		++i;
	      }

	  // correction by external momentum conservation

	  int dir = -1;
	  if (external_edges().first.size() == 1) dir = +1;

	  for (int i = 0; i < ni-nl; ++i)
	    if (equations[i][ne-1])
	      {
		equations[i][ne-2] += dir*equations[i][ne-1];
		equations[i][ne-1] = 0;
	      }

	  // solution and normalization of the momenta

	  if (solve_equations(equations, ni-nl) == ni-nl)
	    {
	      vector<Propagator> sorted;
	      vector<pair<int, int> > labelling;
	      
	      vector<Propagator> original;
	      for (int i = 0; i < ni-nl; ++i)
		{
		  Propagator p(0, edge_by_momentum[i], +1);
		  for (int j = ni-nl; j < ne; ++j)
		    p.push_back(-equations[i][j]);
		  original.push_back(p);
		}
	      
	      vector<string> mass;
	      for (int i = ni-nl; i < ne; ++i)
		mass.push_back(_mass[edge_by_momentum[i]]);

	      normalize_propagators(sorted,
				    labelling,
				    original,
				    partition,
				    mass,
				    permutation,
				    ni-nl);

	      if (_propagators.empty() || _propagators <= sorted)
		{
		  vector<pair<int, int> > edge_labelling;
		  
		  for (vector<Propagator>::iterator p = sorted.begin();
		       p !=  sorted.end(); ++p)
		    edge_labelling.push_back(make_pair(p->_edge, p->_dir));

		  for (vector<pair<int, int> >::iterator l = labelling.begin();
		       l != labelling.end(); ++l)
		    {
		      const int e = edge_by_momentum[ni-nl+l->first];
		      edge_labelling.push_back(make_pair(e, l->second));
		    }

		  edge_labelling[ne-1].second = dir*edge_labelling[ne-2].second;

		  if (!_propagators.empty() && _propagators == sorted)
		    {
		      for (int i = 0; i < _integral_edge_labelling.size(); ++i)
			{
			  const int e1 = _integral_edge_labelling[i].first;
			  const int e2 = edge_labelling[i].first;
			  const int mass_compare = _mass[e1].compare(_mass[e2]);
			  
			  if (mass_compare < 0)
			    break;
			  else if (mass_compare > 0)
			    {
			      _integral_edge_labelling = edge_labelling;
			      _propagators = sorted;
			      break;
			    }
			}
		    }
		  else
		    {
		      _integral_edge_labelling = edge_labelling;
		      _propagators = sorted;
		    }
		}
	    }

	  // generate next distribution of loop momenta
	  
	  int i = nl, j = ni;
	  while (i > 0 && loop[--i] >= --j) ;
	  if (i == 0 && loop[0] == j) break;
	  ++loop[i];
	  for (++i; i < nl; ++i) loop[i] = loop[i-1]+1;
	}
    }
  else
    {
      /****************************************
       *
       * multileg prototypes
       *
       */
      
      vector<vector<int> > topology_components = biconnected_components();

      // if the topology has only one nontrivial component, do nothing

      if (topology_components.size() == n_external_edges()+1)
	{
	  _integral_edge_labelling = edge_labelling();
	  return _integral_edge_labelling;
	}

      // take apart the vacuum components

      set<int> nonvacuum_component;

      for (vector<vector<int> >::iterator tc = topology_components.begin();
	   tc != topology_components.end(); ++tc)
	{
	  multiset<PrototypeComponent> components = prototype_components(*tc);
      
	  for (multiset<PrototypeComponent>::iterator pc = components.begin();
	       pc != components.end(); ++pc)
	    if (pc->_vacuum)
	      _components.insert(*pc);
	    else
	      nonvacuum_component.insert(tc->begin(), tc->end());
	}

      if (!nonvacuum_component.empty())
	{
	  vector<int> component(nonvacuum_component.begin(),nonvacuum_component.end());
	  _components.insert(*prototype_components(component).begin());
	}

      // copy the edge labellings of the components

      bool external_edges_inserted = false;

      for (multiset<PrototypeComponent>::iterator pc = _components.begin();
	   pc != _components.end(); ++pc)
	{
	  vector<pair<int, int> > label = pc->_p->edge_labelling();

	  bool insert_external_edges = false;

	  if (!external_edges_inserted && 
	      (nonvacuum_component.empty() || !pc->_vacuum))
	    {
	      insert_external_edges = true;
	      external_edges_inserted = true;
	    }

	  for (int e = 0; e < pc->_p->n_edges(); ++e)
	    if (insert_external_edges || !pc->_p->is_external_edge(label[e].first))
	      {
		const pair<int, int> l(pc->_edge[label[e].first], label[e].second);
		_integral_edge_labelling.push_back(l);
	      }
	}
    }

  return _integral_edge_labelling;
}

/******************************************************************************
 *                                                                            *
 * has_scaleless_components                                                   *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Looks for vacuum components with only massless lines.
 *
 */

bool
Prototype::has_scaleless_components() const
{
  validate();

  vector<vector<int> > topology_components = biconnected_components();

  for (vector<vector<int> >::iterator tc = topology_components.begin();
       tc != topology_components.end(); ++tc)
    {
      multiset<PrototypeComponent> components = prototype_components(*tc);

      for (multiset<PrototypeComponent>::iterator pc = components.begin();
	   pc != components.end(); ++pc)
	if (pc->_vacuum)
	  {
	    bool massless = true;
	    
	    for (int e = 0; e < pc->_p->n_edges(); ++e)
	      if (!pc->_p->is_external_edge(e) && pc->_p->_mass[e] != "0")
		{
		  massless = false;
		  break;
		}
	    
	    if (massless) return true;
	  }
    }
  
  return false;
}

/******************************************************************************
 *                                                                            *
 * scalar_product_remapping                                                   *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Solves the relations between the squares of the edge momenta, and
 * the scalar products. A certain ordering is assumed, given by the scalar
 * product basis below.
 *
 */

pair<vector<string>, vector<string> >
Prototype::scalar_product_remapping()
{
  validate();
  const int eliminated = normalize_momenta();

  const int n_loop_mom = n_cycles();

  int n_mom = _momentum_basis.size();

  const int n_ext = n_mom-n_loop_mom;
  if (n_external_edges() > 2) --n_mom;
  const int n_ext_mom = n_mom - n_loop_mom;

  const int n_denom = n_edges()-n_external_edges();
  const int n_scalar = (n_mom*(n_mom+1))/2;

  // the basis is k1.k1,...,kn.kn,k1.k2,...,k1.kn,...,k1.p1 ...,p1.p1,...,
  // where the external momenta are independent (see normalize_momenta()).
  // but first the squares of the denominators denoted K1.K1, ...

  vector<string> scalar;

  for (int e = 0; e < n_edges(); ++e)
    if (!is_external_edge(e))
      {
	ostringstream square;
	square << "SS(";
	print_normalized_momentum(e, square);
	square << ")";
	scalar.push_back(square.str());
      }

  for (int i = 0; i < n_loop_mom; ++i)
    scalar.push_back(_momentum_basis[i+n_ext]+"."+_momentum_basis[i+n_ext]);
  
  for (int i = 0; i < n_loop_mom; ++i)
    for (int j = i+1; j < n_loop_mom; ++j)
      scalar.push_back(_momentum_basis[i+n_ext]+"."+_momentum_basis[j+n_ext]);
  
  for (int i = 0; i < n_loop_mom; ++i)
    for (int j = 0; j < n_ext; ++j)
      if (j != eliminated)
	scalar.push_back(_momentum_basis[i+n_ext]+"."+_momentum_basis[j]);
  
  for (int i = 0; i < n_ext; ++i)
    if (i != eliminated)
      scalar.push_back(_momentum_basis[i]+"."+_momentum_basis[i]);
  
  for (int i = 0; i < n_ext; ++i)
    if (i != eliminated)
      for (int j = i+1; j < n_ext; ++j)
	if (j != eliminated)
	  scalar.push_back(_momentum_basis[i]+"."+_momentum_basis[j]);

  // generate the system of linear equations to be solved

  vector<vector<int> > equations;
  
  for (int e = 0; e < n_edges(); ++e)
    {
      if (is_external_edge(e)) continue;

      vector<int> equation(n_denom+n_scalar);
      equation[equations.size()] = 1;

      for (int i = 0; i < _momentum_basis.size(); ++i)
	for (int j = i; j < _momentum_basis.size(); ++j)
	  if (n_ext == n_ext_mom || (i != eliminated && j != eliminated))
	    {
	      int coeff = _edge_desc[e]._momentum[i]*_edge_desc[e]._momentum[j];
	      if (coeff == 0) continue;

	      int pos;
	    
	      int k = i, l = j;
	      if (n_ext != n_ext_mom && k > eliminated) --k;
	      if (n_ext != n_ext_mom && l > eliminated) --l;
  
	      int m = k;
	      if (m >= n_ext_mom) m -= n_ext_mom;
	      int n = l;
	      if (n >= n_ext_mom) n -= n_ext_mom;

	      if (k == l)
		{
		  if (k >= n_ext_mom)
		    pos = m;
		  else if (k < n_ext_mom)
		    pos = (n_loop_mom*(n_loop_mom+2*n_ext_mom+1))/2+m;
		}
	      else
		{
		  coeff *= 2;

		  if (k >= n_ext_mom && l >= n_ext_mom)
		    pos = ((m+1)*(2*n_loop_mom-m-2))/2+n;
		  else if (k < n_ext_mom && l >= n_ext_mom)
		    pos = (n_loop_mom*(n_loop_mom+1))/2+m+n*n_ext_mom;
		  else if (k < n_ext_mom && l < n_ext_mom)
		    pos = (n_loop_mom*(n_loop_mom+2*n_ext_mom+1))/2
		      +((m+1)*(2*n_ext_mom-m-2))/2+n;
		}

	      equation[n_denom+pos] = -coeff;
	    }

      equations.push_back(equation);
    }

  int position = n_denom-1;

  for (int i = 0; i < n_denom; ++i)
    {
      int equation = 0;
      bool found = false;

      while (!found)
	{
	  ++position;

	  int n_terms;
	  
	  for (int j = i; j < n_denom; ++j)
	    if (equations[j][position] != 0)
	      {
		int count_terms = 0;

		for (int k = 0; k < n_denom+n_scalar; ++k)
		  if (equations[j][k] != 0) ++count_terms;

		if (!found || count_terms < n_terms)
		  {
		    n_terms = count_terms;
		    equation = j;
		    found = true;
		  }
	      }
	}

      if (equation != i) swap(equations[equation], equations[i]);

      if (equations[i][position] > 0)
	for (int j = 0; j < n_denom+n_scalar; ++j)
	  equations[i][j] = -equations[i][j];
      
      for (int j = 0; j < n_denom; ++j)
	if (i != j && equations[j][position] != 0)
	  {
	    const int coeff1 = equations[j][position];
	    const int coeff2 = equations[i][position];

	    bool normalize = true;
	    
	    for (int k = 0; k < n_denom+n_scalar; ++k)
	      {
		equations[j][k] = coeff1*equations[i][k]-coeff2*equations[j][k];
		
		if (equations[j][k] == -1 || equations[j][k] == 1)
		  normalize = false;
	      }

	    if (normalize)
	      {
		for (int k = 0; k < n_denom+n_scalar; ++k)
		  if (equations[j][k] % 2)
		    {
		      cerr << "Prototype::scalar_product_remapping: "
			   << "incorrect normalization" << endl;
		      exit(1);
		    }
		  else
		    {
		      equations[j][k] /= 2;
		    }
	      }
	  }
    }

  vector<string> reducible_scalars, irreducible_scalars;

  position = n_denom;

  for (int i = 0; i < n_denom; ++i)
    {
      while (equations[i][position] == 0)
	irreducible_scalars.push_back(scalar[position++]);

      bool first_term = true;
      string equation(scalar[position]+" = ");
      if (equations[i][position] == -2) equation += "1/2*(";
      for (int j = 0; j < n_denom+n_scalar; ++j)
	if (j != position && equations[i][j] != 0)
	  {
	    if (!first_term && equations[i][j] > 0) equation += "+";
	    else first_term = false;
	    
	    switch (equations[i][j])
	      {
	      case +1:
		break;
	      case +2:
		equation += "2*";
		break;
	      case -1:
		equation += "-";
		break;
	      case -2:
		equation += "-2*";
		break;
	      default:
		cerr << "Prototype::scalar_product_remapping: "
		     << "incorrect coefficient" << endl;
		exit(1);
	      }

	    equation += scalar[j];
	  }
      if (equations[i][position] == -2) equation += ")";

      reducible_scalars.push_back(equation);
      ++position;
    }

  for (; position < n_denom+n_loop_mom*(n_loop_mom+2*n_ext_mom+1)/2; ++position)
    irreducible_scalars.push_back(scalar[position]);

  return make_pair(reducible_scalars, irreducible_scalars);
}

/******************************************************************************
 *                                                                            *
 * scalar_compare                                                             *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Additionally to the topological comparison, the momentum patterns are
 * compared. This assures that equivalent prototypes will have the same
 * expression in terms of scalar products of external momenta. This is
 * important beginning with boxes where interchanges of some external lines
 * may lead to transpositions of Mandelstam variables, e.g. s <-> t.
 *
 */

int
Prototype::scalar_compare(const Prototype& p) const
{
  const int first_stage_comparison = topological_compare(p);
  if (first_stage_comparison != 0) return first_stage_comparison;

  if (_momentum_labelling.size() != p._momentum_labelling.size())
    return _momentum_labelling.size() - p._momentum_labelling.size();

  for (int i = 0; i < _momentum_labelling.size(); ++i)
    if (_momentum_labelling[i] != p._momentum_labelling[i])
      return _momentum_labelling[i].compare(p._momentum_labelling[i]);

  return 0;
}

/******************************************************************************
 *                                                                            *
 * integral_compare                                                           *
 *                                                                            *
 ******************************************************************************/

int
Prototype::integral_compare(const Prototype& p) const
{
  if (n_edges() != p.n_edges()) return n_edges()-p.n_edges();

  integral_edge_labelling();
  p.integral_edge_labelling();

  if (n_external_edges() == 0 && n_cycles() > 1)
    {
      const int basis_size = _momentum_distribution[0]._momentum.size();
      const int p_basis_size = p._momentum_distribution[0]._momentum.size();

      if (basis_size != p_basis_size) return basis_size-p_basis_size;

      // comparison of momentum and mass distributions

      for (int i = 0; i < n_edges(); ++i)
	{
	  for (int j = 0; j < basis_size; ++j)
	    {
	      const int c1 = _momentum_distribution[i]._momentum[j];
	      const int c2 = p._momentum_distribution[i]._momentum[j];
	      if (c1 != c2) return c1-c2;
	    }

	  const int e1 = _integral_edge_labelling[i].first;
	  const int e2 = p._integral_edge_labelling[i].first;
	  const int mass_compare = _mass[e1].compare(p._mass[e2]);
	  if (mass_compare) return mass_compare;
	}
    }
  else if (n_external_edges() == 2)
    {
      if (_propagators.size() != p._propagators.size())
	return _propagators.size()-p._propagators.size();

      for (int i = 0; i < _propagators.size(); ++i)
	for (int j = 0; j < _propagators[i].size(); ++j)
	  if (_propagators[i][j] != p._propagators[i][j])
	    return _propagators[i][j] - p._propagators[i][j];

      for (int i = 0; i < n_edges(); ++i)
	{
	  const int e1 = _integral_edge_labelling[i].first;
	  const int e2 = p._integral_edge_labelling[i].first;
	  const int mass_compare = _mass[e1].compare(p._mass[e2]);
	  if (mass_compare) return mass_compare;
	}
    }
  else
    {
      if (_components.size() != p._components.size())
	return _components.size() - p._components.size();
      
      if (_components.empty()) return scalar_compare(p);

      multiset<PrototypeComponent>::iterator pc, p_pc;

      for (pc = _components.begin(), p_pc = p._components.begin();
	   pc != _components.end(); ++pc, ++p_pc)
	{
	  const int comparison = pc->_p->scalar_compare(*p_pc->_p);
	  if (comparison != 0) return comparison;
	}
    }

  return 0;
}

/******************************************************************************
 *                                                                            *
 * validate                                                                   *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Some of the algorithms, currently has_scaleless_components() and
 * scalar_product_remapping() require the prototype to be 1PI and
 * not to contain selfenergy insertions.
 *
 */

bool
Prototype::validate() const
{
  if (!is_one_particle_irreducible())
    {
      cerr << "Prototype::validate: 1PR prototypes are not allowed\n\n";
      print_edge_list(cerr);
      exit(1);
    }

  if (has_self_energies())
    {
      cerr<< "Prototype::validate: self energies are not allowed\n\n";
      print_edge_list(cerr);
      exit(1);
    }

  return true;
}

/******************************************************************************
 *                                                                            *
 * next_variation                                                             *
 *                                                                            *
 ******************************************************************************/

bool
Prototype::next_variation(vector<int>& signs) const
{
  int i = signs.size();
  while (i > 0 && signs[--i] < 0) ;
  if (i == 0 && signs[i] < 0) return false;
  for (; i < signs.size(); ++i) signs[i] = -signs[i];
  return true;
}

/******************************************************************************
 *                                                                            *
 * minimize_momentum_distribution                                             *
 *                                                                            *
 ******************************************************************************/

vector<Prototype::MomentumDescriptor>
Prototype::minimize_momentum_distribution() const
{
  vector<int> positions;
  for (int i = 0; i < n_cycles(); ++i) positions.push_back(i);

  vector<MomentumDescriptor> d;
  minimize_momentum_distribution(d, positions, 0, 0);

  return d;
}

void
Prototype::minimize_momentum_distribution(vector<MomentumDescriptor>& minimal,
					  vector<int>& positions,
					  int current,
					  int min) const
{
  // generate the next set of positions

  if (current != positions.size())
    {
      for (int i = min; i < n_edges(); ++i)
	{
	  positions[current] = i;
	  minimize_momentum_distribution(minimal, positions, current+1, i+1);
	}
      return;
    }

  // create the system of momentum conservation relations

  vector<int> momentum_by_edge(n_edges()), edge_by_momentum(n_edges());
  
  for (int e = 0, i = 0, j = 0; e < n_edges(); ++e)
    if (find(positions.begin(), positions.end(), e) == positions.end())
      momentum_by_edge[e] = i++;
    else
      momentum_by_edge[e] = n_edges()-positions.size()+j++;

  for (int e = 0; e < n_edges(); ++e)
    edge_by_momentum[momentum_by_edge[e]] = e;

  vector<vector<int> > equations(n_nodes(), vector<int>(n_edges()));

  for (int n = 0; n < n_nodes(); ++n)
    {
      pair<vector<int>, vector<int> > adjacent_edges = this->adjacent_edges(n);

      for (vector<int>::iterator e = adjacent_edges.first.begin();
	   e != adjacent_edges.first.end(); ++e)
	equations[n][momentum_by_edge[*e]] += 1;
      
      for (vector<int>::iterator e = adjacent_edges.second.begin();
	   e != adjacent_edges.second.end(); ++e)
	equations[n][momentum_by_edge[*e]] -= 1;
    }

  // solve

  int n = n_edges()-positions.size();
  if (solve_equations(equations, n) != n) return;

  // permute momentum names and relative signs

  vector<int> names;
  for (int i = 0; i < positions.size(); ++i) names.push_back(i);

  do
    {
      vector<int> signs(positions.size()-1,+1);
      
      do
	{
	  vector<MomentumDescriptor> distribution;
	  
	  for (int i = 0; i < positions.size(); ++i)
	    {
	      MomentumDescriptor desc(positions.size());
	      desc._momentum[i] = 1;
	      desc._edge = positions[names[i]];
	      desc._dir = +1;
	      if (i && signs[i-1] < 0) desc._dir = -1;
	      distribution.push_back(desc);
	    }
	  
	  for (int i = 0; i < n; ++i)
	    {
	      int sign = +1;
	      bool first = true;
	      vector<int> momentum(positions.size());
	      for (int j = 0; j < positions.size(); ++j)
		{
		  int c = sign*equations[i][n+names[j]];
		  if (j) c *= signs[j-1];
		  
		  if (c && first)
		    {
		      if (c < 0)
			{
			  c = -c;
			  sign = -sign;
			}
		      first = false;
		    }
		  
		  momentum[j] = c;
		}
	      
	      MomentumDescriptor desc;
	      desc._momentum = momentum;
	      desc._edge = edge_by_momentum[i];
	      desc._dir = +1;
	      if (sign > 0) desc._dir = -1;
	      distribution.push_back(desc);
	    }

	  sort(distribution.begin(), distribution.end());

	  // compare with the current minimal distribution
	  // the comparison goes in several stages:
	  //
	  // 1) number of momentum components,
	  //    to get the distribution that is shortest
	  //
	  // 2) lexicographic component comparison
	  //
	  // 3) mass pattern comparison
	  

	  if (minimal.empty())
	    {
	      minimal = distribution;
	      continue;
	    } 

	  int minimal_size = 0;
	  int distribution_size = 0;

	  for (int i = 0; i < distribution.size(); ++i)
	    {
	      minimal_size += minimal[i].size();
	      distribution_size += distribution[i].size();
	    }

	  if (minimal_size != distribution_size)
	    {
	      if (minimal_size > distribution_size) minimal = distribution;
	      continue;
	    }

	  bool next = false;
	  for (int i = 0; i < distribution.size(); ++i)
	    {
	      if (minimal[i] < distribution[i])
		{
		  next = true;
		  break;
		}
	      else if (distribution[i] < minimal[i])
		{
		  minimal = distribution;
		  next = true;
		  break;
		}
	    }
	  if (next) continue;

	  for (int i = 0; i < distribution.size(); ++i)
	    {
	      int mass_comparison = 
		_mass[minimal[i]._edge].compare(_mass[distribution[i]._edge]);

	      if (mass_comparison < 0)
		{
		  break;
		}
	      else if (mass_comparison > 0)
		{
		  minimal = distribution;
		  break;
		}
	    }
	}
      while (next_variation(signs));
    }
  while (next_permutation(names.begin(), names.end()));
}

/******************************************************************************
 *                                                                            *
 * normalize_propagators                                                      *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Given a list of propagators determine the lexicographically maximal with
 * respect to the following transformations
 *
 * 1) permutation of the propagators
 * 2) change of the edge direction associated with a propagator
 * 3) renaming of the loop and external momenta
 * 4) change of sign of the loop and external momenta
 * 
 * lexicographic ordering is given by the momentum distribution, mass
 * distribution associated with the propagators and mass distribution
 * associated with the edges which carry the loop and external momenta.
 *
 * The algorithm is recursive and uses partitions of the loop and external
 * momenta. At a given stage a cell of the partition contains the momenta,
 * which may still be permuted. A cell may be signed, which means that the
 * momenta have fixed signs. For each of the propagators maximal with respect
 * to the partition, we find the new partition by splitting each cell into three
 * containing first the positive, then the vanishing and finally the negative
 * elements. The procedure is repeated for the new partition and the remaining
 * propagators.
 *
 * Warning: the implementation assumes that cells have no more than 2^16
 *          elements. With this assumption, the code looks nicer. This could
 *          be avoided, but should never generate any problems in practice. 
 *
 */

void
Prototype::normalize_propagators(vector<Propagator>& sorted,
				 vector<pair<int, int> >& labelling,
				 const vector<Propagator>& original,
				 const vector<Cell>& partition,
				 const vector<string>& mass,
				 vector<int> p,
				 int n) const
{
  if (n > 0)
    {
      // 1st pass: determination of the lexicographically maximal propagators
      // with respect to the current partition. The comparison goes cell by
      // cell where we count the number of positive, vanishing and negative
      // elements. We take into account the possibility to change the global
      // sign and the signs of the elements if the cell is not signed.

      bool fill_counts = true;
      vector<int> counts(partition.size());
      vector<int> propagators;
      vector<int> signs;

      for (int i = 0; i < n; ++i)
	{
	  vector<int>::iterator count = counts.begin();
	  bool insert_propagator = true;
	  int sign = 0;

	  for (vector<Cell>::const_iterator cell = partition.begin(); 
	       cell != partition.end(); ++cell, ++count)
	    {
	      int n_pos = 0, n_0 = 0, n_neg = 0;

	      for (Cell::const_iterator j= cell->begin(); j != cell->end(); ++j)
		{
		  int k = original[p[i]][j->first];
		  if (k == 0) ++n_0;
		  else
		    {
		      if (j->second < 0) k = -k;
		      if (sign < 0) k = -k;

		      if (k > 0) ++n_pos;
		      else ++n_neg;
		    }
		}
	  
	      if (!cell->_signed) n_pos += n_neg;
	      else if (!sign)
		{
		  // the sign can only be fixed by a signed cell with an uneven
		  // distribution of positive and negative elements
		  if (n_pos > n_neg) sign = +1;
		  else if (n_pos < n_neg)
		    {
		      n_pos = n_neg;
		      sign = -1;
		    }
		}

	      // this hack assumes that cells have less than 2^16 elements.
	      // for comparison we don't need the negative elements
	      const int sum = (n_pos<<16) | n_0;
	      
	      if (fill_counts) *count = sum;
	      else if (*count > sum)
		{
		  insert_propagator = false;
		  break;
		}
	      else if (*count < sum)
		{
		  fill_counts = true;
		  *count = sum;
		  propagators.clear();
		  signs.clear();
		}
	    }
	  
	  if (insert_propagator)
	    {
	      propagators.push_back(i);
	      signs.push_back(sign);
	    }
	  fill_counts = false;
	}

      // 2nd pass: recursive sorting for each of the determined propagators
      // For each propagator we construct a new partition by splitting 
      // each cell into three containing positive, vanishing and negative
      // elements respectively. If the parent cell is not signed then the
      // cell containing vanishing elements inherits this property.

      for (vector<int>::const_iterator i= propagators.begin(), s= signs.begin();
	   i != propagators.end(); ++i, ++s)
	{
	  vector<Cell> next;
      
	  for (vector<Cell>::const_iterator cell = partition.begin(); 
	       cell != partition.end(); ++cell)
	    {
	      Cell cell_pos, cell_0, cell_neg;
	      if (!cell->_signed) cell_0._signed = false;

	      for (Cell::const_iterator j= cell->begin(); j != cell->end(); ++j)
		{
		  int k = original[p[*i]][j->first];
		  if (k == 0) cell_0.push_back(*j);
		  else
		    {
		      if (j->second < 0) k = -k;
		      if (*s < 0) k = -k;

		      if (k > 0)
			cell_pos.push_back(*j);
		      else if (!cell->_signed)
			cell_pos.push_back(make_pair(j->first, -j->second));
		      else
			cell_neg.push_back(*j);
		    }
		}

	      if (!cell_pos.empty()) next.push_back(cell_pos);
	      if (!cell_0.empty())   next.push_back(cell_0);
	      if (!cell_neg.empty()) next.push_back(cell_neg);
	    }
	  
	  // sort

	  swap(p[*i], p[n-1]);
	  normalize_propagators(sorted,labelling,original,next,mass,p,n-1);
	  swap(p[*i], p[n-1]);
	}
    }
  else
    {
      // find whether the determined momentum and mass distribution is larger
      // than the current lexicographically maximal.
      
      bool replace_propagators = false;
      if (sorted.empty()) replace_propagators = true;

      // first compare the momentum distribution

      vector<Propagator> propagators;
      PropagatorPtr current = sorted.begin();
      
      for (vector<int>::reverse_iterator i = p.rbegin(); i != p.rend(); ++i)
	{
	  Propagator propagator(0, original[*i]._edge, original[*i]._dir);

	  int sign = 0;
	  vector<int>::iterator l;
	  if (!replace_propagators) l = current->begin();

	  for (vector<Cell>::const_iterator cell = partition.begin();
	       cell != partition.end(); ++cell)
	    for (Cell::const_iterator j = cell->begin(); j != cell->end(); ++j)
	      {
		int k = original[*i][j->first];
		if (j->second < 0) k = -k;
		if (!sign && k) sign = k;
		if (sign < 0) k = -k;
		propagator.push_back(k);

		if (!replace_propagators)
		  {
		    if (k < *l) return;
		    else if (k > *l) replace_propagators = true;
		    ++l;
		  }
	      }
	  if (sign < 0) propagator._dir = -propagator._dir;

	  propagators.push_back(propagator);
	  if (!replace_propagators) ++current;
	}
      
      // then the mass distribution of the nontrivial propagators
      
      if (!replace_propagators)
	{
	  current = sorted.begin();
	  for (PropagatorPtr propagator = propagators.begin();
	       propagator != propagators.end(); ++propagator, ++current)
	    {
	      const string& m1 = _mass[current->_edge];
	      const string& m2 = _mass[propagator->_edge];
	      const int mass_compare = m1.compare(m2);

	      if (mass_compare < 0) return;
	      else if (mass_compare > 0)
		{
		  replace_propagators = true;
		  break;
		}
	    }
	}
      
      // and finally the mass distribution of the trivial propagators
      // at the same time, we determine the unique permutation of the
      // loop momenta, which is consistent with the partition and
      // maximizes the mass distribution of the trivial propagators.

      vector<pair<int, int> > permutation;
      vector<pair<int, int> >::iterator l = labelling.begin();
      
      for (vector<Cell>::const_iterator cell = partition.begin();
	   cell != partition.end(); ++cell)
	{
	  Cell c(*cell);

	  for (Cell::iterator i = c.begin()+1; i != c.end();++i)
	    for (Cell::iterator j = i, k = i-1; j != c.begin() &&
		   mass[j->first] > mass[k->first] ; --j, --k) swap(*j, *k);

	  for (Cell::iterator i = c.begin(); i != c.end(); ++i)
	    {
	      if (!replace_propagators)
		{
		  const int mass_compare=mass[i->first].compare(mass[l->first]);
		  if (mass_compare < 0) return;
		  else if (mass_compare > 0) replace_propagators = true;
		  ++l;
		}
	      permutation.push_back(*i);
	    }
	    
	}

      if (replace_propagators)
	{
	  sorted = propagators;
	  labelling = permutation;
	}
    }
}

/******************************************************************************
 *                                                                            *
 * prototype_components                                                       *
 *                                                                            *
 ******************************************************************************/

multiset<Prototype::PrototypeComponent>
Prototype::prototype_components(const vector<int>& tc) const
{
  multiset<PrototypeComponent> components;

  if (tc.size() == 1)
    {
      const int n = tc.front();
      vector<int> nodes = external_nodes();
      vector<bool> used_edge(n_edges(), false);
 
      for (int d = 0; d <= 1; ++d)
	for (vector<int>::const_iterator e = _node_desc[n]._edges[d].begin();
	     e != _node_desc[n]._edges[d].end(); ++e)
	  if (_edge_desc[*e]._node[d] == n && !used_edge[*e])
	    {
	      PrototypeComponent pc(n_external_nodes()+1);
	
	      pc._p->insert_edge(0, 0, _mass[*e]);
	      pc._edge.push_back(*e);

	      // construction of the external edges

	      int external_node = 1;

	      for (vector<int>::iterator n=nodes.begin();n!= nodes.end(); ++n)
		if (_node_desc[*n]._edges[0].size() == 1 &&
		    _node_desc[*n]._edges[1].size() == 0)
		  {
		    const int e = _node_desc[*n]._edges[0].front();

		    pc._edge.push_back(e);
		    pc._p->insert_edge(0, external_node++, _mass[e]);
		  }
		else if (_node_desc[*n]._edges[0].size() == 0 &&
			 _node_desc[*n]._edges[1].size() == 1)
		  {
		    const int e = _node_desc[*n]._edges[1].front();

		    pc._edge.push_back(e);
		    pc._p->insert_edge(external_node++, 0, _mass[e]);
		  }
	  
	      // inheritance of the external momenta
		
	      for (int i = 0; i < n_external_edges(); ++i)
		{
		  int e = pc._p->n_edges()-i-1;
		  pc._p->copy_external_momentum(e, pc._edge[e], *this);
		}
	      
	      components.insert(pc);

	      used_edge[*e] = true;
	    }
    }
  else
    {
      PrototypeComponent pc(tc.size()+n_external_nodes());
	
      set<int> articulation_points;
      vector<int> component_node(n_nodes(), -1);
      vector<bool> component_edge(n_edges(), false);

      for (int n = 0; n < tc.size(); ++n) component_node[tc[n]] = n;

      // construction of the internal edges of the component

      stack<int> nodes_to_visit;
      vector<bool> visited_node(n_nodes(), false);
      nodes_to_visit.push(tc.front());
      visited_node[tc.front()] = true;
	
      while (!nodes_to_visit.empty())
	{
	  const int curr = nodes_to_visit.top();
	  nodes_to_visit.pop();

	  for (int d = 0; d <= 1; ++d)
	    for (vector<int>::const_iterator e = _node_desc[curr]._edges[d].begin();
		 e != _node_desc[curr]._edges[d].end(); ++e)
	      if (!component_edge[*e])
		{
		  const int next = _edge_desc[*e]._node[d];
		  if (next == curr) continue;
		    
		  if (component_node[next] >= 0)
		    {
		      component_edge[*e] = true;
		      pc._edge.push_back(*e);

		      if (d)
			pc._p->insert_edge(component_node[curr], 
					   component_node[next], 
					   _mass[*e]);
		      else
			pc._p->insert_edge(component_node[next], 
					   component_node[curr], 
					   _mass[*e]);

		      if (!visited_node[next])
			{
			  nodes_to_visit.push(next);
			  visited_node[next] = true;
			}
		    }
		  else
		    {
		      articulation_points.insert(curr);
		    }
		}
	}

      // external edges are irrelevant biconnected components

      if (pc._p->n_edges() == 1) return components;

      // construction of the external edges of the component

      int external_node = tc.size();

      for (set<int>::iterator point = articulation_points.begin();
	   point != articulation_points.end(); ++point)
	{
	  vector<int> visible_nodes = subgraph(*point, component_edge);

	  int visible_external_nodes = 0;

	  for (vector<int>::iterator n = visible_nodes.begin();
	       n != visible_nodes.end(); ++n)
	    if (_node_desc[*n]._edges[0].size() == 1 &&
		_node_desc[*n]._edges[1].size() == 0)
	      {
		const int e = _node_desc[*n]._edges[0].front();

		pc._edge.push_back(e);
		pc._p->insert_edge(component_node[*point],
				   external_node++,
				   _mass[e]);

		++visible_external_nodes;
	      }
	    else if (_node_desc[*n]._edges[0].size() == 0 &&
		     _node_desc[*n]._edges[1].size() == 1)
	      {
		const int e = _node_desc[*n]._edges[1].front();

		pc._edge.push_back(e);
		pc._p->insert_edge(external_node++,
				   component_node[*point],
				   _mass[e]);

		++visible_external_nodes;
	      }

	  if (visible_external_nodes != n_external_nodes() &&
	      visible_external_nodes != 0) pc._vacuum = false;
	}
	  
      // inheritance of the external momenta
      
      for (int i = 0; i < n_external_edges(); ++i)
	{
	  int e = pc._p->n_edges()-i-1;
	  pc._p->copy_external_momentum(e, pc._edge[e], *this);
	}
      
      components.insert(pc);
    }

  return components;
}

/******************************************************************************
 *                                                                            *
 * compare                                                                    *
 *                                                                            *
 ******************************************************************************/

int
Prototype::compare(const Prototype& p) const
{
  return integral_compare(p);
}
