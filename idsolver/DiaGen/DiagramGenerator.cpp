/******************************************************************************
 *                                                                            *
 * Copyright (C) 2002 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include <stack>
#include <algorithm>
#include "DiagramGenerator.hpp"

/******************************************************************************
 *                                                                            *
 * constructor                                                                *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The constructor performs the following tasks
 *
 * 1) checks the external fields specified by the user.
 *
 * 2) determines the independent external field assignements based on the
 *    independent external node permutations of the underlying topology.
 *
 * 3) prepares the topological part of the traversal tree. This is done by
 *    going through the topology according to the DFS algorithm and accumulating
 *    recursively the visited edges.
 *
 * 4) finds the first diagram on the list.
 * 
 */

DiagramGenerator::DiagramGenerator(const Topology&       t,
				   const Model&          model,
				   const vector<string>& in_fields,
				   const vector<string>& in_momenta,
				   const vector<string>& out_fields,
				   const vector<string>& out_momenta,
				   int counter_term_order) :
  _initialized(false),
  _diag(t)
{
  // check that all fields have their momenta specified

  if (in_momenta.size() != in_fields.size() ||
      out_momenta.size() != out_fields.size())
    {
      cerr << "The specified fields do not match the momenta\n";
      exit(1);
    }
  
  // check matching of the external fields to the topology
  
  int n_external_nodes = t.n_external_nodes();

  if (n_external_nodes == 0)
    {
      cerr << "Vacuum diagrams are not yet supported\n" ;
      exit(1);
    }
  
  if (in_fields.size()+out_fields.size() != n_external_nodes)
    {
      cerr << "The number of external fields does not match\n"
	   << "the number of external nodes of the topology\n";
      exit(1);
    }

  // determine the external fields based on names

    for (vector<string>::const_iterator name = in_fields.begin();
	 name != in_fields.end(); ++name)
      {
	Field::pointer f = model.find(*name);
	
	if (!f)
	  {
	    cerr << "There is no field " << *name << " in the field list\n";
	    exit(1);
	  }

	_ext_fields[0].push_back(f);
      }
    for (vector<string>::const_iterator name = out_fields.begin();
	 name != out_fields.end(); ++name)
      {
	Field::pointer f = model.find(*name);
	
	if (!f)
	  {
	    cerr << "There is no field " << *name << " in the field list\n";
	    exit(1);
	  }

	_ext_fields[1].push_back(f);
      }

    _ext_momenta[0] = in_momenta;
    _ext_momenta[1] = out_momenta;

  // calculate the topological properties of t

  _symmetry_group = t.internal_node_symmetry_subgroup();
  _ext_node_permutations = t.independent_external_node_permutations();
  _current_ext_node_permutation = _ext_node_permutations.begin();
  assign_external_fields();
  
  // create a DFS traversal tree with recursively fixed edges
	  
  pair<vector<int>, vector<int> > ext_edges = t.external_edges();

  vector<bool> visited_edge(t.n_edges(), false);
  vector<bool> visited_node(t.n_nodes(), false);

  for (vector<int>::iterator e = ext_edges.first.begin();
       e != ext_edges.first.end(); ++e)
    {
      visited_edge[*e] = true;
      visited_node[t.adjacent_nodes(*e).first] = true;
    }
  for (vector<int>::iterator e = ext_edges.second.begin();
       e != ext_edges.second.end(); ++e)
    {
      visited_edge[*e] = true;
      visited_node[t.adjacent_nodes(*e).second] = true;
    }	  

  int n_visited_nodes = n_external_nodes;
  stack<int> nodes_to_visit;

  while (n_visited_nodes != t.n_nodes())
    {
      // find a node on a connectedness component

      int starting_node;

      if (n_external_nodes == 0)
	{
	  for (starting_node = 0; !visited_node[starting_node];
	       ++starting_node) ;
	}
      else
	{
	  bool starting_node_fixed = false;
	  
	  for (vector<int>::iterator e = ext_edges.first.begin();
	       e != ext_edges.first.end(); ++e)
	    {
	      starting_node = t.adjacent_nodes(*e).second;
	      if (!visited_node[starting_node])
		{
		  starting_node_fixed = true;
		  break;
		}
	    }

	  if (!starting_node_fixed)
	    for (vector<int>::iterator e = ext_edges.second.begin();
		 e != ext_edges.second.end(); ++e)
	      {
		starting_node = t.adjacent_nodes(*e).first;
		if (!visited_node[starting_node]) break;
	      }
	}

      nodes_to_visit.push(starting_node);
      visited_node[starting_node] = true;
      ++n_visited_nodes;

      // make the traversal tree of the component

      while (!nodes_to_visit.empty())
	{
	  int n = nodes_to_visit.top();
	  nodes_to_visit.pop();

	  TraversalDescriptor desc;
	  desc._node = n;
      
	  pair<vector<int>, vector<int> > adjacent_edges = t.adjacent_edges(n);
	  desc._degree=adjacent_edges.first.size()+adjacent_edges.second.size();

	  int edge_index = 0;
	  vector<vector<int> > edges_by_node(t.n_nodes());

	  for (vector<int>::iterator e = adjacent_edges.first.begin();
	       e != adjacent_edges.first.end(); ++e)
	    {
	      int child = t.adjacent_nodes(*e).first;
		  
	      if (visited_edge[*e]) desc._assigned_edges[0].push_back(*e);
	      else
		{
		  desc._nodes_to_visit.insert(child);
		  desc._unassigned_edges[0].push_back(*e);
		  visited_edge[*e] = true;
		  
		  edges_by_node[child].push_back(edge_index++);

		  if (n == child)
		    {
		      desc._unassigned_edges[1].push_back(*e);
		      ++edge_index;
		    }
		}

	      if (!visited_node[child])
		{
		  nodes_to_visit.push(child);
		  visited_node[child] = true;
		  ++n_visited_nodes;
		}
	    }
	  for (vector<int>::iterator e = adjacent_edges.second.begin();
	       e != adjacent_edges.second.end(); ++e)
	    {
	      int child = t.adjacent_nodes(*e).second;

	      if (child != n)
		{
		  if (visited_edge[*e]) desc._assigned_edges[1].push_back(*e);
		  else
		    {
		      desc._nodes_to_visit.insert(child);
		      desc._unassigned_edges[1].push_back(*e);
		      visited_edge[*e] = true;
		    
		      edges_by_node[child].push_back(edge_index++);
		    }
		}
	      
	      if (!visited_node[child])
		{
		  nodes_to_visit.push(child);
		  visited_node[child] = true;
		  ++n_visited_nodes;
		}
	    }

	  // determine the multiple edges and loops
	  
	  for (int child = 0; child < t.n_nodes(); ++child)
	    if (edges_by_node[child].size() > 0)
	      {
		if (child != n)
		  {
		    vector<int> multiple_edge;

		    copy(edges_by_node[child].begin(),
			 edges_by_node[child].end(),
			 back_inserter(multiple_edge));

		    if (multiple_edge.size() > 1)
		      desc._multiple_edges.push_back(multiple_edge);
		  }
		else
		  {
		    copy(edges_by_node[child].begin(),
			 edges_by_node[child].end(),
			 back_inserter(desc._loops));
		  }
	      }

	  if (desc._assigned_edges[0].empty() &&
	      desc._assigned_edges[1].empty())
	    {
	      cerr << "Vacuum components are not yet supported\n";
	      exit(1);
	    }
	  
	  _traversal_desc.push_back(desc);
	}
    }

  _traversal_desc.front()._order = counter_term_order;

  // the generator determines the symmetry factor and initializes the lines
  // and vertices of the diagram.

  _diag._symmetry_factor_determined = true;
  _diag._initialized = true;
}

/******************************************************************************
 *                                                                            *
 * assign_external_fields                                                     *
 *                                                                            *
 ******************************************************************************/

void
DiagramGenerator::assign_external_fields()
{
  vector<int>::iterator n = _current_ext_node_permutation->begin();

  for (int d = 0; d < 2; ++d)
    {
      vector<string>::iterator p = _ext_momenta[d].begin();
      
      for (vector<Field::pointer>::iterator f = _ext_fields[d].begin();
	   f != _ext_fields[d].end(); ++f, ++n, ++p)
	{
	  pair<vector<int>, vector<int> > adj_edges=_diag.adjacent_edges(*n);
	  
	  if (adj_edges.second.empty())
	    {
	      int e = adj_edges.first.front();
	      _diag.assign_external_momentum(*p, e, 1-2*d);
	      
	      if (d)
		_diag._line[e]._field[0] = (*f)->_coupled_field;
	      else
		_diag._line[e]._field[0] = *f;
	    }
	  else
	    {
	      int e = adj_edges.second.front();
	      _diag.assign_external_momentum(*p, e, 1-2*d);
	      
	      if (d)
		_diag._line[e]._field[1] = (*f)->_coupled_field;
	      else
		_diag._line[e]._field[1] = *f;
	    }
	}
    }
}

/******************************************************************************
 *                                                                            *
 * assign_internal_fields                                                     *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The assignement of the internal fields consists of copying the unassigned
 * fields in the current descriptor to the unassigned edges and filling their
 * other ends according to the field propagators. This last operation is not
 * done for topological loops, and it must be later on checked whether the
 * assignement corresponds to an existing propagator.
 *
 */

void
DiagramGenerator::assign_internal_fields(descriptor_pointer desc)
{
  vector<Field::pointer>::iterator f = desc->_unassigned_fields.begin();

  for (int d = 0; d < 2; ++d)
    for (vector<int>::iterator e = desc->_unassigned_edges[d].begin();
	 e != desc->_unassigned_edges[d].end(); ++e, ++f)
      {
	_diag._line[*e]._field[1-d] = *f;
	
	pair<int, int> adjacent_nodes = _diag.adjacent_nodes(*e);

	if (adjacent_nodes.first != adjacent_nodes.second)
	  _diag._line[*e]._field[d] = (*f)->_coupled_field;
      }
}

/******************************************************************************
 *                                                                            *
 * init_unassigned_fields                                                     *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The unassigned fields are determined from the fields of the current vertex
 * and the assigned fields in the descriptor. The operation is set difference
 * and therefore both sets of fields must be sorted.
 *
 */

void
DiagramGenerator::init_unassigned_fields(descriptor_pointer desc)
{
  desc->_unassigned_fields.clear();

  set_difference((*desc->_current_compatible_vertex)->_sorted_fields.begin(),
		 (*desc->_current_compatible_vertex)->_sorted_fields.end(),
		 desc->_assigned_fields.begin(), desc->_assigned_fields.end(),
		 back_inserter(desc->_unassigned_fields));
}

/******************************************************************************
 *                                                                            *
 * next_unassigned_fields_permutation                                         *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The unassigned fields should be assigned to lines in all possible ways
 * according to sorting rules and loop constraints. This is achieved, by 
 * generating all permutations and checking whether a given permutation 
 * satisfies all the requirements (see valid_vertex()).
 *
 */

bool
DiagramGenerator::next_unassigned_fields_permutation(descriptor_pointer desc)
{
  do
    {
      if (!next_permutation(desc->_unassigned_fields.begin(),
			    desc->_unassigned_fields.end())) return false;
    }
  while (!valid_vertex(desc));

  return true;
}

/******************************************************************************
 *                                                                            *
 * init_vertex                                                                *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The method initializes in fact the temporary assignement part of the 
 * traversal descriptor. First it determines the assigned fields. These are
 * used to find the compatible vertices. The only difficulty is that some fields
 * may occur more than once. The list of vertices of a field has therefore
 * been arranged in a way as to give all the vertices that have the given field
 * at least m times, where m is called the multiplicity of the field. In the
 * end, the first vertex on the list is assigned to respective diagram node.
 *
 */

bool
DiagramGenerator::init_vertex(descriptor_pointer desc)
{
  // determine the fields that have already been assigned

  desc->_assigned_fields.clear();

  for (int d = 0; d < 2; ++d)
    for (vector<int>::iterator e = desc->_assigned_edges[d].begin();
	 e != desc->_assigned_edges[d].end(); ++e)
      {
	desc->_assigned_fields.push_back(_diag._line[*e]._field[1-d]);
      }

  sort(desc->_assigned_fields.begin(), desc->_assigned_fields.end());

  // determine the multiplicities of the assigned fields

  vector<Field::pointer> unique_fields;
  unique_copy(desc->_assigned_fields.begin(), desc->_assigned_fields.end(),
	      back_inserter(unique_fields));

  vector<int> multiplicities;
  for (vector<Field::pointer>::iterator f = unique_fields.begin();
       f != unique_fields.end(); ++f)
    {
      multiplicities.push_back(count(desc->_assigned_fields.begin(),
				     desc->_assigned_fields.end(), *f));
    }
  
  // find vertices compatible with the current field assignement

  vector<Vertex::pointer> vertices;
  desc->_compatible_vertices.clear();

  const int d = desc->_degree;

  if (unique_fields.size() == 1)
    {
      const int m = multiplicities.front();

      if (unique_fields.front()->_vertices.size() <= d ||
	  unique_fields.front()->_vertices[d].size() <= m ||
	  unique_fields.front()->_vertices[d][m].empty()) return false;

      copy(unique_fields.front()->_vertices[d][m].begin(),
	   unique_fields.front()->_vertices[d][m].end(),
	   back_inserter(desc->_compatible_vertices));
    }
  else
    {
      vector<Field::pointer>::iterator f = unique_fields.begin()+1;

      vector<int>::iterator m = multiplicities.begin()+1;

      if ((*(f-1))->_vertices.size() <= d ||
	  (*(f-1))->_vertices[d].size() <= *(m-1) ||
	  (*(f-1))->_vertices[d][*(m-1)].empty() ||
	  (*f)->_vertices.size() <= d ||
	  (*f)->_vertices[d].size() <= *m ||
	  (*f)->_vertices[d][*m].empty()) return false;
      
      set_intersection((*f)->_vertices[d][*m].begin(),
		       (*f)->_vertices[d][*m].end(),
		       (*(f-1))->_vertices[d][*(m-1)].begin(),
		       (*(f-1))->_vertices[d][*(m-1)].end(),
		       back_inserter(desc->_compatible_vertices));

      for (++f, ++m; f != unique_fields.end(); ++f, ++m)
	{
	  if ((*f)->_vertices.size() <= d ||
	      (*f)->_vertices[d].size() <= *m ||
	      (*f)->_vertices[d][*m].empty()) return false;
	  
	  vertices.clear();
	  swap(desc->_compatible_vertices, vertices);

	  set_intersection(vertices.begin(), vertices.end(),
			   (*f)->_vertices[d][*m].begin(),
			   (*f)->_vertices[d][*m].end(),
			   back_inserter(desc->_compatible_vertices));
	}
    }

  // leave only those vertices that have the required couter-term order

  vertices.clear();
  swap(desc->_compatible_vertices, vertices);
  for (vector<Vertex::pointer>::iterator v = vertices.begin();
       v != vertices.end(); ++v)
    {
      if ((desc == _traversal_desc.end()-1 && desc->_order == (*v)->_order) ||
	  (desc != _traversal_desc.end()-1 && desc->_order >= (*v)->_order))
	{
	  desc->_compatible_vertices.push_back(*v);
	}
    }
  
  if (desc->_compatible_vertices.empty()) return false;

  // assign the first vertex on the list

  desc->_current_compatible_vertex = desc->_compatible_vertices.begin();

  _diag._vertex[desc->_node] = *desc->_current_compatible_vertex;
  if (desc != _traversal_desc.end()-1)
    (desc+1)->_order = desc->_order-(*desc->_current_compatible_vertex)->_order;

  init_unassigned_fields(desc);
  assign_internal_fields(desc);
  if (!valid_vertex(desc))
    return next_vertex(desc);
  else
    return true;  
}

/******************************************************************************
 *                                                                            *
 * next_vertex                                                                *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Generates the next permutation of the unassigned fields or when there are
 * no more valid permutations, assignes the next vertex on the list of 
 * compatible vertices.
 *
 */

bool
DiagramGenerator::next_vertex(descriptor_pointer desc)
{
  if (next_unassigned_fields_permutation(desc))
    {
      assign_internal_fields(desc);
      return true;
    }

  if (++desc->_current_compatible_vertex != desc->_compatible_vertices.end())
    {
      _diag._vertex[desc->_node] = *desc->_current_compatible_vertex;
      if (desc != _traversal_desc.end()-1)
	(desc+1)->_order = desc->_order
	  -(*desc->_current_compatible_vertex)->_order;

      init_unassigned_fields(desc);
      assign_internal_fields(desc);
      if (!valid_vertex(desc))
	return next_vertex(desc);
      else
	return true;
    }

  return false;
}

/******************************************************************************
 *                                                                            *
 * valid_vertex                                                               *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * A vertex is valid if the fields are ordered in every multiple edge, both
 * ends of a loop form a propagator and the source fields in loops are ordered.
 * The method evaluates also the symmetry factor as follows
 *
 * - for every set of n identical propagators the symmetry factor is multiplied
 *   by n!.
 *
 * - for every loop of a self-conjugate field the symmetry factor is multiplied
 *   by 2.
 *
 */

bool
DiagramGenerator::valid_vertex(descriptor_pointer desc)
{
  int equal_field_count;
  desc->_symmetry_factor = 1;

  for (vector<vector<int> >::iterator multi = desc->_multiple_edges.begin();
       multi != desc->_multiple_edges.end(); ++multi)
    {
      equal_field_count = 1;

      for (vector<int>::iterator index = multi->begin()+1;
	   index != multi->end(); ++index)
	{
	  Field::pointer prev = desc->_unassigned_fields[*(index-1)];
	  Field::pointer next = desc->_unassigned_fields[*index];

	  if (prev < next) return false;

	  if (next == prev) desc->_symmetry_factor *= ++equal_field_count;
	  else equal_field_count = 1;
	}
    }

  equal_field_count = 1;
  Field::pointer prev = NULL;
  for (vector<int>::iterator loop = desc->_loops.begin();
       loop != desc->_loops.end(); ++loop)
    {
      Field::pointer source = desc->_unassigned_fields[*loop];
      Field::pointer target = desc->_unassigned_fields[*loop+1];
      
      if (target != source->_coupled_field) return false;
      if (target < source) return false;
      if (loop != desc->_loops.begin() && prev < source) return false;

      if (source == target) desc->_symmetry_factor *= 2;
      if (source == prev) desc->_symmetry_factor *= ++equal_field_count;
      else equal_field_count = 1;

      prev = source;
    }
  
  return true;
}

/******************************************************************************
 *                                                                            *
 * next_diagram                                                               *
 *                                                                            *
 ******************************************************************************/

bool
DiagramGenerator::next_diagram(descriptor_pointer desc)
{
  if (!_initialized)
    {
      _initialized = true;
      desc = _traversal_desc.begin();

      for (; desc != _traversal_desc.end() && init_vertex(desc); ++desc) ;
      if (desc != _traversal_desc.end() && !next_diagram(desc)) return false;

      if (!valid_diagram()) next_diagram();

      return true;
    }

  do
    {
      for (--desc; desc >= _traversal_desc.begin() &&
	     !next_vertex(desc); --desc) ;

      if (desc < _traversal_desc.begin())
	{
	  if (++_current_ext_node_permutation == _ext_node_permutations.end())
	    return false;
	  else
	    {
	      assign_external_fields();
	      desc = _traversal_desc.begin()-1;
	    }
	} 

      for (++desc; desc != _traversal_desc.end() &&
	     init_vertex(desc); ++desc) ;
    }
  while (desc != _traversal_desc.end() || !valid_diagram());

  return true;
}

/******************************************************************************
 *                                                                            *
 * valid_diagram                                                              *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * A diagram is valid, if it is minimal under the action of the internal
 * symmetry group. The comparison is lexicographical on a vector of fields 
 * formed as follows. The diagram is traversed according to the traversal tree,
 * but the nodes are transformed through the symmetry permutation. The
 * unassigned fields on the side of the given node are listed and sorted in
 * multiple edges and loops. By the same a global symmetry factor is evaluated
 * which is the number of identity elements. The full symmetry factor of the
 * diagram which is the ratio of the factors from the vertices and the
 * factors from multiple edges, loops and global symmetry is calculated.
 *
 */

bool
DiagramGenerator::valid_diagram()
{
  int equal_configuration_count = 1;

  if (_symmetry_group.size() != 1)
    {
      vector<Field::pointer> original_diagram;

      for (vector<vector<int> >::iterator perm = _symmetry_group.begin();
	   perm != _symmetry_group.end(); ++perm)
	{
	  vector<Field::pointer> transformed_diagram;

	  for (descriptor_pointer desc = _traversal_desc.begin();
	       desc != _traversal_desc.end(); ++desc)
	    {
	      const int parent = (*perm)[desc->_node];

	      for (set<int>::iterator n = desc->_nodes_to_visit.begin();
		   n != desc->_nodes_to_visit.end(); ++n)
		{
		  const int child = (*perm)[*n];
		  vector<Field::pointer> fields;
	      
		  pair<vector<int>, vector<int> >
		    adjacent_edges = _diag.adjacent_edges(parent);
	      
		  for (vector<int>::iterator e = adjacent_edges.first.begin();
		       e != adjacent_edges.first.end(); ++e)
		    {
		      if (_diag.adjacent_nodes(*e).first == child)
			fields.push_back(_diag._line[*e]._field[1]);
		    }

		  if (parent != child)
		    for (vector<int>::iterator e= adjacent_edges.second.begin();
			 e != adjacent_edges.second.end(); ++e)
		      {
			if (_diag.adjacent_nodes(*e).second == child)
			  fields.push_back(_diag._line[*e]._field[0]);
		      }

		  sort(fields.begin(), fields.end());

		  transformed_diagram.insert(transformed_diagram.end(),
					     fields.begin(), fields.end());
		}
	    }

	  if (perm == _symmetry_group.begin())
	    {
	      original_diagram = transformed_diagram;
	      continue;
	    }

	  bool equal_configuration = true;
	  for (vector<Field::pointer>::iterator
		 original_field = original_diagram.begin(),
		 transformed_field = transformed_diagram.begin();
	       original_field != original_diagram.end();
	       ++original_field, ++transformed_field)
	    {
	      if (*original_field < *transformed_field)
		{
		  equal_configuration = false;
		  break;
		}
	      if (*transformed_field < *original_field) return false;
	    }

	  if (equal_configuration) ++equal_configuration_count;
	}
    }

  _diag._symmetry_factor = 1;

  for (descriptor_pointer desc = _traversal_desc.begin();
       desc != _traversal_desc.end(); ++desc)
    {
      _diag._symmetry_factor *= _diag._vertex[desc->_node]->_symmetry_factor;
    }

  for (descriptor_pointer desc = _traversal_desc.begin();
       desc != _traversal_desc.end(); ++desc)
    {
      _diag._symmetry_factor /= desc->_symmetry_factor;
    }
  
  _diag._symmetry_factor /= equal_configuration_count;

  return true;
}
