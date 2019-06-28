/******************************************************************************
 *                                                                            *
 * Copyright (C) 2006 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include <map>
#include <algorithm>

#include "ScalarDiagram.hpp"
#include "Prototype.hpp"
#include "Utilities.hpp"

/******************************************************************************
 *                                                                            *
 * insert_edge                                                                *
 *                                                                            *
 ******************************************************************************/

void
ScalarDiagram::insert_edge(int source_node, int target_node, const string& mass)
{
  Topology::insert_edge(source_node, target_node);
  _momentum_labelling.clear();
  _edge_labelling.clear();
  _mass.push_back(mass);
}

/******************************************************************************
 *                                                                            *
 * edge_labelling                                                             *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The algorithm takes all of the transformations of the symmetry group of
 * the node labelling and generates mass and external momentum patterns
 * corresponding to the appropriate edge_labelling(). The lexicographically
 * minimal is chosen as the canonical. The external momentum patterns go
 * beyond what is required of a canonical labelling of colored edges (see
 * momentum_labelling()). However, they are used by the prototype class.
 *
 */

vector<pair<int, int> >
ScalarDiagram::edge_labelling() const
{
  if (!_edge_labelling.empty()) return _edge_labelling;

  const vector<int> node_label = node_labelling();
  const vector<vector<int> > node_group = node_symmetry_group();

  // edge to momentum mapping (only for external edges)

  vector<string> momentum(n_edges());

  for (int e = 0; e < n_edges(); ++e)
    if (is_external_edge(e))
      {
	int pos = 0;
	
	for (; pos < _momentum_basis.size() &&
	       !_edge_desc[e]._momentum[pos]; ++pos) ;
	
	if (pos != _momentum_basis.size())
	  momentum[e] = _momentum_basis[pos];
      }
  
  // minimalization of the mass and momentum patterns

  for (vector<vector<int> >::const_iterator perm = node_group.begin();
       perm != node_group.end(); ++perm)
    {
      // edge labelling

      vector<int> node_perm;

      for (int n = 0; n < n_nodes(); ++n)
	node_perm.push_back((*perm)[node_label[n]]);

      vector<pair<int, int> > edge_perm = edge_labelling(node_perm);

      // momentum labelling

      vector<string> momenta, squares;

      for (int e = 0; e < n_edges(); ++e)
	if (is_external_edge(edge_perm[e].first))
	  {
	    momenta.push_back(momentum[edge_perm[e].first]);
	    squares.push_back(_mass[edge_perm[e].first]);
	  }

      vector<string> momentum_perm = momentum_labelling(momenta, squares);
	
      //

      if (perm == node_group.begin())
	{
	  _edge_labelling = edge_perm;
	  _momentum_labelling = momentum_perm;
	}
      else
	{
	  // mass pattern comparison

	  int mass_pattern_comparison = 0;

	  for (int e = 0; e < n_edges(); ++e)
	    if (_mass[_edge_labelling[e].first] <
		_mass[edge_perm[e].first])
	      {
		mass_pattern_comparison = +1;
		break;
	      }
	    else if (_mass[edge_perm[e].first] <
		     _mass[_edge_labelling[e].first])
	      {
		mass_pattern_comparison = -1;
		_edge_labelling = edge_perm;
		_momentum_labelling = momentum_perm;
		break;
	      }

	  // momentum pattern comparison

	  if (mass_pattern_comparison == 0 && 
	      momentum_perm < _momentum_labelling)
	    {
	      _edge_labelling = edge_perm;
	      _momentum_labelling = momentum_perm;
	    }
	}
    }

  return _edge_labelling;
}

/******************************************************************************
 *                                                                            *
 * edge_labelling                                                             *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Given a node permutation a permutation of edges is constructed which 
 * corresponds to a DFS traversal (modified nonrecursive version where
 * all the children of a node are visited first), where the children of a node 
 * are visited following a lexicographic order, and multiple edges are sorted
 * according to their masses.
 *
 */

vector<pair<int, int> >
ScalarDiagram::edge_labelling(const vector<int>& node_permutation) const
{
  vector<pair<int, int> > edge_labelling;

  vector<int> inv_node_permutation(n_nodes());
  for (int node = 0; node < n_nodes(); ++node)
    inv_node_permutation[node_permutation[node]] = node;

  vector<bool> visited_edge(n_edges(), false);
  vector<bool> visited_node(n_edges(), false);
  stack<int> nodes_to_visit;

  for (;;)
    {
      int starting_node;
      for (starting_node = 0; starting_node < n_nodes(); ++starting_node)
	{
	  if (!visited_node[starting_node])
	    {
	      nodes_to_visit.push(starting_node);
	      visited_node[starting_node] = true;
	      break;
	    }
	}
      if (starting_node == n_nodes()) break;

      while (!nodes_to_visit.empty())
	{
	  const int curr = node_permutation[nodes_to_visit.top()];
	  nodes_to_visit.pop();
	  
	  map<int, multimap<string, pair<int, int> > > multi_edges;
	  set<int> next_nodes_to_visit;
	  
	  for (int dir = 0; dir <= 1; ++dir)
	    for (vector<int>::const_iterator
		   e = _node_desc[curr]._edges[dir].begin();
		 e != _node_desc[curr]._edges[dir].end(); ++e)
	      {
		if (!visited_edge[*e])
		  {
		    const int next =
		      inv_node_permutation[_edge_desc[*e]._node[dir]];
		    
		    if (!visited_node[next])
		      {
			next_nodes_to_visit.insert(next);
			visited_node[next] = true;
		      }
		    
		    const pair<int, int> edge(*e, 2*dir-1);
		    multi_edges[next].insert(make_pair(_mass[*e], edge));
		    visited_edge[*e] = true;
		  }
	      }
	  
	  for (set<int>::iterator node = next_nodes_to_visit.begin();
	       node != next_nodes_to_visit.end(); ++node)
	    nodes_to_visit.push(*node);
	  
	  for (map<int,multimap<string, pair<int, int> > >::iterator
		 multi_edge = multi_edges.begin();
	       multi_edge != multi_edges.end(); ++multi_edge)
	    for (multimap<string, pair<int, int> >::iterator edge =
		   multi_edge->second.begin(); edge != multi_edge->second.end();
		 ++edge)
	      edge_labelling.push_back(edge->second);
	}
    }

  return edge_labelling;
}

/******************************************************************************
 *                                                                            *
 * momentum_labelling                                                         *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The momentum labelling is minimal with respect to the group of permutations
 * which leave the kinematical invariants unchanged. This method, used by
 * edge_labelling(), allows to chose a labelling, where e.g. two four-point
 * functions obtainable by an intechange of external momenta, which does
 * leave the s, t and u kinematic invariant unchanged, would be identified as
 * isomorphic.
 *
 * warning: currently implemented up to four-point functions (the nontrivial
 *          behaviour is only for four-point functions anyway)
 *
 */

vector<string>
ScalarDiagram::momentum_labelling(vector<string> momenta,
				  vector<string> squares) const
{
  vector<string> momentum_labelling;

  if (n_external_edges() != 4 || momenta.size() != 4) return momentum_labelling;

  momentum_labelling = momenta;

  const int g[3][4] = {{1,0,3,2},{2,3,0,1},{3,2,1,0}};

  for (int i = 0; i < 3; ++i)
    {
      vector<string> momentum_perm(4), square_perm(4);
      
      for (int j = 0; j < 4; ++j)
	{
	  momentum_perm[j] = momenta[g[i][j]];
	  square_perm[j] = squares[g[i][j]];
	}

      if (square_perm == squares && momentum_perm < momentum_labelling)
	momentum_labelling = momentum_perm;
    }

  return momentum_labelling;
}

/******************************************************************************
 *                                                                            *
 * nontrivial_edge_symmetry_group                                             *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * by nontrivial edge symmetry group we mean that permutations within a
 * multiple edge are not included
 *
 */

vector<vector<pair<int, int> > >
ScalarDiagram::nontrivial_edge_symmetry_group() const
{
  vector<vector<pair<int, int> > > nontrivial_edge_group;

  vector<pair<int, int> > identity;
  for (int e = 0; e < n_edges(); ++e) 
    identity.push_back(make_pair(e, +1));

  nontrivial_edge_group.push_back(identity);

  const vector<vector<int> > node_group = node_symmetry_group();

  // edge to momentum mapping (only for external edges)

  vector<string> momentum(n_edges());

  for (int e = 0; e < n_edges(); ++e)
    if (is_external_edge(e))
      {
	int pos = 0;
	
	for (; pos < _momentum_basis.size() &&
	       !_edge_desc[e]._momentum[pos]; ++pos) ;
	
	if (pos != _momentum_basis.size())
	  momentum[e] = _momentum_basis[pos];
      }
  
  // nontrivial edge symmetry group determination
  
  vector<pair<int, int> > reference_edge_perm;
  vector<string> reference_momentum_perm;

  for (vector<vector<int> >::const_iterator perm = node_group.begin();
       perm != node_group.end(); ++perm)
    {
      // edge labelling

      vector<int> node_perm;
      for (int n = 0; n < n_nodes(); ++n) node_perm.push_back((*perm)[n]);
      vector<pair<int, int> > edge_perm = edge_labelling(node_perm);

      // momentum labelling

      vector<string> momenta, squares;

      for (int e = 0; e < n_edges(); ++e)
	if (is_external_edge(edge_perm[e].first))
	  {
	    momenta.push_back(momentum[edge_perm[e].first]);
	    squares.push_back(_mass[edge_perm[e].first]);
	  }

      vector<string> momentum_perm = momentum_labelling(momenta, squares);
	
      //

      if (perm == node_group.begin())
	{
	  reference_edge_perm = edge_perm;
	  reference_momentum_perm = momentum_perm;
	}
      else
	{
	  // mass pattern comparison

	  bool mass_patterns_equal = true;

	  for (int e = 0; e < n_edges(); ++e)
	    if (_mass[reference_edge_perm[e].first]!=_mass[edge_perm[e].first])
	      {
		mass_patterns_equal = false;
		break;
	      }

	  // momentum pattern comparison and symmetry determination

	  if (mass_patterns_equal && reference_momentum_perm == momentum_perm)
	    {
	      vector<pair<int, int> > perm(n_edges());

	      for (int e = 0; e < n_edges(); ++e)
		{
		  const int sign = 
		    reference_edge_perm[e].second * edge_perm[e].second;
		  
		  perm[reference_edge_perm[e].first] = 
		    make_pair(edge_perm[e].first, sign);
		}
	      
	      nontrivial_edge_group.push_back(perm);
	    }
	}
    }
  
  return nontrivial_edge_group;
}

/******************************************************************************
 *                                                                            *
 * symmetric_multiple_edges                                                   *
 *                                                                            *
 ******************************************************************************/

vector<vector<pair<int, int> > >
ScalarDiagram::symmetric_multiple_edges() const
{
  vector<vector<pair<int, int> > > symmetric_multi_edges;

  vector<bool> visited_edge(n_edges(), false);
  vector<bool> visited_node(n_edges(), false);
  stack<int> nodes_to_visit;

  for (;;)
    {
      int starting_node;
      for (starting_node = 0; starting_node < n_nodes(); ++starting_node)
	{
	  if (!visited_node[starting_node])
	    {
	      nodes_to_visit.push(starting_node);
	      visited_node[starting_node] = true;
	      break;
	    }
	}
      if (starting_node == n_nodes()) break;
      
      while (!nodes_to_visit.empty())
	{
	  const int curr = nodes_to_visit.top();
	  nodes_to_visit.pop();
	  
	  map<int, multimap<string, pair<int, int> > > multi_edges;
	  
	  for (int dir = 0; dir <= 1; ++dir)
	    for (vector<int>::const_iterator
		   e = _node_desc[curr]._edges[dir].begin();
		 e != _node_desc[curr]._edges[dir].end(); ++e)
	      {
		if (!visited_edge[*e])
		  {
		    const int next = _edge_desc[*e]._node[dir];
		    
		    if (!visited_node[next])
		      {
			nodes_to_visit.push(next);
			visited_node[next] = true;
		      }
		    
		    const pair<int, int> edge(*e, 2*dir-1);
		    multi_edges[next].insert(make_pair(_mass[*e], edge));
		    visited_edge[*e] = true;
		  }
	      }
	  
	  for (map<int,multimap<string, pair<int, int> > >::iterator
		 multi_edge = multi_edges.begin();
	       multi_edge != multi_edges.end(); ++multi_edge)
	    {
	      vector<pair<int, int> > symmetric_multi_edge;
	      string mass;
	      
	      for (multimap<string, pair<int, int> >::iterator
		     edge = multi_edge->second.begin();
		   edge != multi_edge->second.end(); ++edge)
		{
		  if (edge == multi_edge->second.begin())
		    {
		      symmetric_multi_edge.push_back(edge->second);
		      mass = edge->first;
		    }
		  else if (edge->first == mass)
		    {
		      symmetric_multi_edge.push_back(edge->second);
		    }
		  else
		    {
		      if (symmetric_multi_edge.size() > 1)
			symmetric_multi_edges.push_back(symmetric_multi_edge);
		      
		      symmetric_multi_edge.clear();
		      symmetric_multi_edge.push_back(edge->second);
		      mass = edge->first;
		    }
		}
	      
	      if (symmetric_multi_edge.size() > 1)
		symmetric_multi_edges.push_back(symmetric_multi_edge);
	    }
	}
    }

  return symmetric_multi_edges;
}

/******************************************************************************
 *                                                                            *
 * edge_symmetry_group                                                        *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Built upon nontrivial_edge_symmetry_group(), which does not take into account
 * multiple edge permutations. One thing that is lacking is edge inversions
 * in loops. This is maybe not a major point, but should be added in future.
 *
 */

vector<vector<pair<int, int> > >
ScalarDiagram::edge_symmetry_group() const
{
  vector<vector<pair<int, int> > > group = nontrivial_edge_symmetry_group();
  vector<vector<pair<int, int> > > multi_edges = symmetric_multiple_edges();
  vector<vector<pair<int, int> > > complete = group;

  for (vector<vector<pair<int, int> > >::iterator e = multi_edges.begin();
       e != multi_edges.end(); ++e)
    {
      sort(e->begin(), e->end());
      vector<pair<int, int> > perm = *e;

      vector<vector<pair<int, int> > > temp;

      for (vector<vector<pair<int, int> > >::iterator g = complete.begin();
	   g != complete.end(); ++g)
	{
	  vector<vector<pair<int, int> > > elements;
	  elements.push_back(*g);
	  
	  vector<pair<int, int> > elem = *g;
	  
	  while (next_permutation(e->begin(), e->end()))
	    {
	      vector<pair<int, int> > next = elem;
	      
	      for (int i = 0; i < perm.size(); ++i)
		{
		  const int sign = 
		    elem[(*e)[i].first].second*perm[i].second*(*e)[i].second;
		  next[perm[i].first]=make_pair(elem[(*e)[i].first].first,sign);
		}
	      
	      elements.push_back(next);
	    }
	  
	  temp.insert(temp.end(), elements.begin(), elements.end());
	}
      
      complete = temp;
    }

  return complete;
}

/******************************************************************************
 *                                                                            *
 * adapt_momentum_distribution                                                *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Chose such a distribution of the loop momenta, that the first ns momenta are
 * completely contained on the subdiagram edges, where ns is the number of loops
 * of the subdiagram. This is necessary if one wants to perform an expansion
 * w/r to momenta external to the subgraph.
 *
 */

void
ScalarDiagram::adapt_momentum_distribution(const vector<int>& subdiagram_edges)
{
  assign_momenta();

  const int ne = n_edges();
  const int nl = n_cycles();
  const int n1 = n_external_edges();
  const int ni = ne-n1;
  const int ns = nl-reduced_diagram(subdiagram_edges).n_cycles();

  vector<bool> is_subdiagram_edge(ne, false);
  for (vector<int>::const_iterator e = subdiagram_edges.begin();
       e != subdiagram_edges.end(); ++e)
    is_subdiagram_edge[*e] = true;

  vector<int> loop;
  for (int i = 0; i < nl; ++i) loop.push_back(i);
  
  for (;;)
    {
      do
	{
	  // make the maps between edges and momenta
      
	  vector<int> momentum_by_edge(ne), edge_by_momentum(ne);
	  vector<vector<int> > equations(ni-nl, vector<int>(ne));
      
	  vector<int>::iterator j;
     	  for (int e = 0, i = 0, k = 0, l = 0; e < n_edges(); ++e)
	    if (is_external_edge(e))
	      momentum_by_edge[e] = ni+k++;
	    else if ((j = find(loop.begin(), loop.end(), l++)) != loop.end())
	      momentum_by_edge[e] = ni-nl+(j-loop.begin());
	    else
	      momentum_by_edge[e] = i++;

	  for (int e = 0; e < ne; ++e)
	    edge_by_momentum[momentum_by_edge[e]] = e;
      
	  // check that the first ns loop momenta are on the subdiagram
      
	  for (int i = 0; i < ns; ++i)
	    if (!is_subdiagram_edge[edge_by_momentum[ni-nl+i]]) goto Next;
	  
	  // check that the rest of the loop momenta is placed on the reduced
	  // diagram

	  for (int i = ns; i < nl; ++i)
	    if (is_subdiagram_edge[edge_by_momentum[ni-nl+i]]) goto Next;
	  
	  // momentum conservation relations at each node
      
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
      
	  // solve and check whether the first ns momenta are confined to the
	  // subdiagram
      
	  if (solve_equations(equations, ni-nl) == ni-nl)
	    {
	      for (int i = 0; i < ni-nl; ++i)
		if (!is_subdiagram_edge[edge_by_momentum[i]])
		  for (int j = 0; j < ns; ++j)
		    if (equations[i][ni-nl+j])
		      goto Next;
	  
	      const int siz = momentum_basis().size();
	      const int pos0 = siz-nl;

	      for (int i = 0; i < ni-nl; ++i)
		{
		  for (int j = 0; j < nl; ++j)
		    _edge_desc[edge_by_momentum[i]]._momentum[pos0+j] =
		      -equations[i][ni-nl+j];

		  for (int j = 0; j < pos0; ++j)
		    _edge_desc[edge_by_momentum[i]]._momentum[j] = 0;

		  for (int j = ni; j < ne; ++j)
		    {
		      const int val = -equations[i][j];
		      if (!val) continue;
		      for (int k = 0; k < pos0; ++k)
			_edge_desc[edge_by_momentum[i]]._momentum[k] += val
			  *_edge_desc[edge_by_momentum[j]]._momentum[k];
		    }
		}
	      
	      for (int i = 0; i < nl; ++i)
		{
		  for (int j = 0; j < siz; ++j)
		    _edge_desc[edge_by_momentum[ni-nl+i]]._momentum[j] = 0;
		  _edge_desc[edge_by_momentum[ni-nl+i]]._momentum[pos0+i] = 1;
		}

	      return;
	    }

	Next: ;

	}
      while (next_permutation(loop.begin(), loop.end()));

      // generate next distribution of loop momenta

      int i = nl, j = ni;
      while (i > 0 && loop[--i] >= --j) ;
      if (i == 0 && loop[0] == j) break;
      ++loop[i];
      for (++i; i < nl; ++i) loop[i] = loop[i-1]+1;
    }

  cerr << "ScalarDiagram::adapt_momentum_distribution: no suitable momentum "
       << "distribution.\n";
  exit(1);
}

/******************************************************************************
 *                                                                            *
 * reduced_diagram                                                            *
 *                                                                            *
 ******************************************************************************/

/** 
 *
 * Generates a diagram obtained by removing the edges of a subdiagram and
 * fusing the nodes of the removed edges. The order of the edges is conserved.
 *
 */

ScalarDiagram
ScalarDiagram::reduced_diagram(const vector<int>& subdiagram_edges) const
{
  if (subdiagram_edges.empty()) return *this;

  vector<int> node_remapping;
  for (int n = 0; n < n_nodes(); ++n) node_remapping.push_back(n);

  for (vector<int>::const_iterator e = subdiagram_edges.begin();
       e != subdiagram_edges.end(); ++e)
    {
      int n1 = node_remapping[_edge_desc[*e]._node[0]];
      int n2 = node_remapping[_edge_desc[*e]._node[1]];
      
      if (n1 == n2) continue;
      if (n1 > n2) swap(n1,n2);

      for (vector<int>::iterator n = node_remapping.begin();
	   n != node_remapping.end(); ++n)
	if (*n == n2) *n = n1;
	else if (*n > n2) --*n;
    }

  ScalarDiagram d(*max_element(node_remapping.begin(), node_remapping.end())+1);

  for (int e = 0; e < n_edges(); ++e)
    if (find(subdiagram_edges.begin(), subdiagram_edges.end(), e) ==
	subdiagram_edges.end())
    {
      const int n1 = node_remapping[_edge_desc[e]._node[0]];
      const int n2 = node_remapping[_edge_desc[e]._node[1]];

      d.insert_edge(n1, n2, _mass[e]);
    }

  return d;
}

/******************************************************************************
 *                                                                            *
 * subdiagram_prototypes                                                      *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Identifies the prototypes corresponding to a subdiagram given by a list
 * of edges. The output is a list of prototypes together with maps of the edges
 * from the prototype to the original diagram (direction is conserved).
 *
 * If the subdiagram is a vacuum graph it does not have to be connected.
 *
 */

vector<pair<Prototype, vector<int> > >
ScalarDiagram::subdiagram_prototypes(const vector<int>& edges) const
{
  vector<pair<Prototype, vector<int> > > prototypes;
  
  if (edges.empty()) return prototypes;

  // construct the connected subdiagram corresponding to the specified edges.
  // we need a node remapping, since some nodes will not be there anymore after
  // lines are removed.
  
  int node_count = 0;
  vector<int> node_remapping(n_nodes(), -1);

  for (vector<int>::const_iterator e = edges.begin(); e != edges.end(); ++e)
    {
      pair<int, int> nodes = adjacent_nodes(*e);
      if (node_remapping[nodes.first] == -1)
	node_remapping[nodes.first] = node_count++;
      if (node_remapping[nodes.second] == -1)
	node_remapping[nodes.second] = node_count++;
    }

  ScalarDiagram subdiagram1(node_count);

  for (vector<int>::const_iterator e = edges.begin(); e != edges.end(); ++e)
    {
      pair<int, int> nodes = adjacent_nodes(*e);
      subdiagram1.insert_edge(node_remapping[nodes.first],
			     node_remapping[nodes.second],
			     mass(*e));
    }

  // determine the connectedness components

  vector<bool> visited_node(node_count, false);
  vector<bool> forbidden_edge(subdiagram1.n_edges(), false);
  vector<vector<int> > components;

  for (int n = 0; n < node_count; ++n)
    if (!visited_node[n])
      {
	vector<int> c = subdiagram1.subgraph(n, forbidden_edge);
	components.push_back(c);
	for (vector<int>::iterator cn = c.begin(); cn != c.end(); ++cn)
	  visited_node[*cn] = true;
      }

  // if there are several components, check whether this is a vacuum subgraph,
  // since we want to forbid disconnected non-vacuum subgraphs.

  if (components.size() != 1)
    for (vector<int>::const_iterator e = edges.begin(); e != edges.end(); ++e)
      if (is_external_edge(*e))
        {
	  cerr << "ScalarDiagram::subdiagram_prototypes: "
	       << "disconnected non-vacuum subgraphs are forbidden\n";

	  exit(1);
        }

  // connect the different connectedness components by spurious edges. this
  // will allow for a uniform treatment of all the cases, since the new bridges
  // will be eliminated on the same footing as other lines that carry no loop
  // momentum

  for (vector<vector<int> >::iterator c = components.begin()+1;
       c != components.end(); ++c)
    subdiagram1.insert_edge((c-1)->front(), c->front());

  // find edges that do not carry any loop momenta

  subdiagram1.assign_momenta();

  vector<int> edge_remapping;
  vector<int> to_eliminate;

  const int i1 = subdiagram1.momentum_basis().size();
  const int i0 = i1-subdiagram1.n_cycles();
  for (int e = 0; e < edges.size(); ++e)
    {
      bool tree = true;
      vector<int> p = subdiagram1.momentum(e);
      for (int i = i0; i < i1; ++i)
	if (p[i])
	  {
	    tree = false;
	    break;
          }
      if (tree && !is_external_edge(edges[e]))
	to_eliminate.push_back(e);
      else
        edge_remapping.push_back(edges[e]);
    }

  for (int e = edges.size(); e < subdiagram1.n_edges(); ++e)
    to_eliminate.push_back(e);
  
  // remove all the edges found in the previous step. the mapping of the edges
  // from the new subdiagram to the original diagram has already been determined
  // in edge_remapping.

  ScalarDiagram subdiagram2(subdiagram1.reduced_diagram(to_eliminate));

  // identify the independent edges in the subdiagram. two edges are dependent
  // if they have the same momentum (modulo sign) and carry the same mass.
  // the external momenta are not considered, because the algorithm would lead
  // to wrong results in the case of propagators. they are added at the end.

  subdiagram2.assign_momenta();

  map<pair<vector<int>, string>, int> independent_edges;

  for (int e = 0; e < subdiagram2.n_edges(); ++e)
    if (!is_external_edge(edge_remapping[e]))
      {
	int sign = 0;
	vector<int> p = subdiagram2.momentum(e);
	for (vector<int>::iterator i = p.begin(); i != p.end(); ++i)
	  {
	    if (!sign && *i) sign = *i;
	    *i *= sign;
	  }
	independent_edges[make_pair(p, subdiagram2.mass(e))] = e;
      }
  
  // identify edges that have the same momentum, and should thus be treated
  // independently, because they have a different mass.

  map<vector<int>, vector<int> > split_independent_edges;

  for (map<pair<vector<int>,string>,int>::iterator e= independent_edges.begin();
       e != independent_edges.end(); ++e)
    split_independent_edges[e->first.first].push_back(e->second);
  
  // make the final edge clusters, and add the external edges

  vector<vector<int> > edge_clusters;

  for (map<vector<int>, vector<int> >::iterator
	 e = split_independent_edges.begin();
       e != split_independent_edges.end(); ++e)
    edge_clusters.push_back(e->second);
  
  for (int e = 0; e < subdiagram2.n_edges(); ++e)
    if (is_external_edge(edge_remapping[e]))
      edge_clusters.push_back(vector<int>(1,e));

  // the main loop over independent prototypes. the position vector gives the
  // the edges within edge clusters that should remain in order to have a valid
  // prototype.
  
  vector<int> position(edge_clusters.size(), 0);

  for (;;)
    {
      // make the scalar diagram that is also a prototype

      vector<bool> is_eliminated_edge(subdiagram2.n_edges(), true);
      for (int i = 0; i < edge_clusters.size(); ++i)
	is_eliminated_edge[edge_clusters[i][position[i]]] = false;

      vector<int> eliminated_edges;
      for (int e = 0; e < subdiagram2.n_edges(); ++e)
	if (is_eliminated_edge[e]) eliminated_edges.push_back(e);

      Prototype p(subdiagram2.reduced_diagram(eliminated_edges));

      vector<int> remapping;
      for (int e = 0; e < edge_remapping.size(); ++e)
	if (!is_eliminated_edge[e])
	  remapping.push_back(edge_remapping[e]);

      prototypes.push_back(make_pair(p, remapping));

      // next positions

      int i = edge_clusters.size();
      while (--i >= 0 && position[i] == edge_clusters[i].size()-1) ;
      if (i == -1) break;
      ++position[i];
      for (++i; i < edge_clusters.size(); ++i) position[i] = 0;
    }

  return prototypes;
}
  
/******************************************************************************
 *                                                                            *
 * reduced_diagram_prototypes                                                 *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Similar to subdiagram_prototypes, but for the reduced prototypes.
 *
 */

vector<pair<Prototype, vector<int> > >
ScalarDiagram::reduced_diagram_prototypes(const vector<int>& subdiagram_edges)
  const
{
  vector<int> edge_remapping;
  for (int e = 0; e < n_edges(); ++e)
    if (find(subdiagram_edges.begin(), subdiagram_edges.end(), e) ==
	subdiagram_edges.end())
      edge_remapping.push_back(e);
  
  ScalarDiagram rd(reduced_diagram(subdiagram_edges));
  
  vector<int> trivial_subdiagram_edges;
  for (int i = 0; i < rd.n_edges(); ++i)
    trivial_subdiagram_edges.push_back(i);

  vector<pair<Prototype, vector<int> > > prototypes = 
    rd.subdiagram_prototypes(trivial_subdiagram_edges);

  for (vector<pair<Prototype, vector<int> > >::iterator p = prototypes.begin();
       p != prototypes.end(); ++p)
    for (vector<int>::iterator i = p->second.begin(); i != p->second.end(); ++i)
      *i = edge_remapping[*i];

  return prototypes;
}

/******************************************************************************
 *                                                                            *
 * LME_subdiagrams                                                            *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Generates the list of heavy subdiagrams in the Large Mass Expansion. The
 * output is a vector made of vectors of edges in the heavy subdiagrams.
 *
 */

vector<vector<int> >
ScalarDiagram::LME_subdiagrams(const vector<string>& large_masses) const
{
  vector<vector<int> > subgraphs;

  vector<int> heavy_lines;
  vector<int> light_lines;

  for (int e = 0; e < n_edges(); ++e)
    if (find(large_masses.begin(), large_masses.end(), _mass[e]) !=
	large_masses.end() && !is_external_edge(e))
      heavy_lines.push_back(e);
    else
      light_lines.push_back(e);
  
  if (heavy_lines.empty())
    {
      subgraphs.push_back(vector<int>());
      return subgraphs;
    }

  // loop over all possible subgraphs with heavy lines and some light lines
  // such that the subgraph is not 1PR with respect to the light lines.

  for (int n_light = 0; n_light < light_lines.size(); ++n_light)
    {
      Partition light(light_lines.size(), n_light, 1);

      do
	{
	  // count the nodes in the subgraph.
	  
	  set<int> subgraph_nodes;
	  
	  for (vector<int>::iterator e = heavy_lines.begin();
	       e != heavy_lines.end(); ++e)
	    {
	      subgraph_nodes.insert(_edge_desc[*e]._node[0]);
	      subgraph_nodes.insert(_edge_desc[*e]._node[1]);
	    }
	  
	  for (int i = 0; i < light_lines.size(); ++i)
	    if (light[i])
	      {
		subgraph_nodes.insert(_edge_desc[light_lines[i]]._node[0]);
		subgraph_nodes.insert(_edge_desc[light_lines[i]]._node[1]);
	      }

	  // make the subgraph

	  vector<int> node_remapping(n_nodes());

	  int count = 0;
	  for (set<int>::iterator n = subgraph_nodes.begin();
	       n != subgraph_nodes.end(); ++n, ++count)
	    node_remapping[*n] = count;
	  
	  ScalarDiagram g(subgraph_nodes.size());

	  for (vector<int>::iterator e = heavy_lines.begin();
	       e != heavy_lines.end(); ++e)
	    {
	      int source = node_remapping[_edge_desc[*e]._node[0]];
	      int target = node_remapping[_edge_desc[*e]._node[1]];
	      
	      g.insert_edge(source, target);
	    }
	  
	  for (int i = 0; i < light_lines.size(); ++i)
	    if (light[i])
	      {
		int source= node_remapping[_edge_desc[light_lines[i]]._node[0]];
		int target= node_remapping[_edge_desc[light_lines[i]]._node[1]];
	      
		g.insert_edge(source, target);
	      }
	  
	  // check whether the subgraph is 1PI w/r to light lines

	  bool onepi = true;
	  for (int e = heavy_lines.size(); e < g.n_edges(); ++e)
	    {
	      int starting_node = g._edge_desc[e]._node[0];
	      vector<bool> forbidden_edge(g.n_edges(), false);
	      int count1 = g.subgraph(starting_node, forbidden_edge).size();
	      forbidden_edge[e] = true;
	      int count2 = g.subgraph(starting_node, forbidden_edge).size();
	      if (count1 != count2)
		{
		  onepi = false;
		  break;
		}
	    }

	  // if 1PI then copy the edges

	  if (onepi)
	    {
	      vector<int> subgraph(heavy_lines);
	      for (int i = 0; i < light_lines.size(); ++i)
		if (light[i])
		  subgraph.push_back(light_lines[i]);
	      subgraphs.push_back(subgraph);
	    }
	}
      while (light.next());
    }
  
  return subgraphs;
}

/******************************************************************************
 *                                                                            *
 * cuts                                                                       *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Gives a list of cuts, which are lists of edges such that if the diagram
 * is cut through these edges it becomes split into two subgraphs containing
 * the left and the right edges respectively. It is assumed that the left and
 * the right edges form a partition of the set of the external edges.
 *
 */

vector<vector<int> >
ScalarDiagram::cuts(const vector<int>& left_edges,
		    const vector<int>& right_edges) const
{
  vector<vector<int> > cut_list;

  vector<bool> forbidden_edges(n_edges(), false);

  vector<int> left_nodes;
  for (vector<int>::const_iterator e = left_edges.begin();
       e != left_edges.end(); ++e)
  {
    left_nodes.push_back(adjacent_nodes(*e).first);
    forbidden_edges[*e] = true;
  }

  vector<int> right_nodes;
  for (vector<int>::const_iterator e = right_edges.begin();
       e != right_edges.end(); ++e)
  {
    right_nodes.push_back(adjacent_nodes(*e).first);
    forbidden_edges[*e] = true;
  }

  vector<int> available_edges;
  for (int e = 0; e < n_edges(); ++e)
    {
      if (!forbidden_edges[e])
	available_edges.push_back(e);
      else
	forbidden_edges[e] = false;
    }

  vector<int> cut;
  build_cuts(left_nodes, right_nodes, available_edges, -1,
	     cut, forbidden_edges, cut_list);

  // keep only minimal cuts

  vector<vector<int> > minimal_cuts;
  for (vector<vector<int> >::iterator c = cut_list.begin();
       c != cut_list.end(); ++c)
  {
    bool minimal = true;
    for (vector<vector<int> >::iterator d = cut_list.begin();
	 d != cut_list.end(); ++d)
    {
      vector<int> diff;
      set_difference(d->begin(), d->end(),
		     c->begin(), c->end(),
		     back_inserter(diff));
      if (c != d && diff.empty())
      {
	minimal= false;
	break;
      }
    }
    if (minimal) minimal_cuts.push_back(*c);
  }

  return minimal_cuts;
}

void
ScalarDiagram::build_cuts(const vector<int>& left_nodes,
			  const vector<int>& right_nodes,
			  const vector<int>& available_edges,
			  int last,
			  vector<int>& cut,
			  vector<bool>& forbidden_edges,
			  vector<vector<int> >& cut_list) const
{
  vector<int> left  = subgraph(left_nodes.front(),  forbidden_edges);
  vector<int> right = subgraph(right_nodes.front(), forbidden_edges);

  // if there was a cut

  if (left.size() + right.size() != 2*n_nodes())
  {
    vector<int> remaining_left;
    set_difference(left_nodes.begin(), left_nodes.end(),
		   left.begin(), left.end(), back_inserter(remaining_left));
    vector<int> remaining_right;
    set_difference(right_nodes.begin(), right_nodes.end(),
		   right.begin(), right.end(), back_inserter(remaining_right));

    if (left.size() + right.size() == n_nodes() &&
	remaining_left.empty() && remaining_right.empty())
    {
      cut_list.push_back(cut);
    }
    else
    {
      return;
    }
  }
  else
  {
    for (int curr = last + 1; curr < available_edges.size();++curr)
    {
      cut.push_back(available_edges[curr]);
      forbidden_edges[available_edges[curr]] = true;

      build_cuts(left_nodes,
		 right_nodes,
		 available_edges,
		 curr,
		 cut,
		 forbidden_edges,
		 cut_list);

      forbidden_edges[available_edges[curr]] = false;
      cut.pop_back();
    }
  }
}

/******************************************************************************
 *                                                                            *
 * compare                                                                    *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Lexicographical comparison of the mass patterns in the topological edge
 * labelling.
 *
 */

int
ScalarDiagram::compare(const ScalarDiagram& d) const
{
  const int first_stage_comparison = Topology::compare(d);
  if (first_stage_comparison != 0) return first_stage_comparison;

  const vector<pair<int, int> > label = edge_labelling();
  const vector<pair<int, int> > d_label = d.edge_labelling();

  for (int e = 0; e < n_edges(); ++e)
    if (_mass[label[e].first] != d._mass[d_label[e].first])
      return _mass[label[e].first].compare(d._mass[d_label[e].first]);

  return 0;
}

/******************************************************************************
 *                                                                            *
 * print                                                                      *
 *                                                                            *
 ******************************************************************************/

void
ScalarDiagram::print(ostream& output) const
{
  output << "Adjacency matrix:\n\n";
  print_adjacency_matrix(output);

  output << "\nAdjacency list:\n\n";
  print_adjacency_list(output);
  
  output << "\nEdge list:\n\n";
  print_edge_list(output);
}

/******************************************************************************
 *                                                                            *
 * print_edge_list                                                            *
 *                                                                            *
 ******************************************************************************/

void
ScalarDiagram::print_edge_list(ostream& output) const
{
  for (int e = 0; e < n_edges(); ++e)
    {
      output << e << ": " << _edge_desc[e]._node[0]
	     << " -> " << _edge_desc[e]._node[1]
	     << ", " << _mass[e];

      if (!_momentum_basis.empty())
	{
	  output << ", ";

	  int index = 0;
	  bool first_output = true;
	  for (vector<int>::const_iterator p = _edge_desc[e]._momentum.begin();
	       p != _edge_desc[e]._momentum.end(); ++p, ++index)
	    {
	      switch (*p)
		{
		case 1:
		  if (!first_output) output << "+";
		  else first_output = false;
		  output << _momentum_basis[index];
		  break;
		case -1:
		  if (first_output) first_output = false;
		  output << "-" << _momentum_basis[index];
		  break;
		}
	    }
	  if (first_output) output << 0;
	}
      output << "\n";
    }
}
