/******************************************************************************
 *                                                                            *
 * Copyright (C) 2002 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include <sstream>
#include <algorithm>
#include "Diagram.hpp"

/******************************************************************************
 *                                                                            *
 * interface functions (virtual)                                              *
 *                                                                            *
 ******************************************************************************/

int
Diagram::n_fermion_loops() const
{
  determine_sign();
  return _closed_fermion_chains.size();
}

vector<vector<int> >
Diagram::open_fermion_chains() const
{
  determine_sign();
  return _open_fermion_chains;
}

vector<vector<int> >
Diagram::closed_fermion_chains() const
{
  determine_sign();
  return _closed_fermion_chains;
}

/******************************************************************************
 *                                                                            *
 * determine_sign                                                             *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The sign of the diagram is determined according to the properties of the
 * anticommuting field chains.
 *
 * 1) Open chains contribute a sign according to the permutation of the external
 *    fields. Pairs of fields (first, last) in the chains are listed (the first
 *    field is always an anti-particle). If the permutation leading to ordered
 *    first and last fields (independently) is odd then the sign is negative.
 *    It may happed that there will be identical fields. They are then sorted
 *    according to the momentum they carry. If this is not conclusive, a fatal
 *    error results.
 *
 * 2) Closed chains contribute a minus sign.
 *
 * The correcteness of the algorithm resides on the existence of vertices which
 * have only a pair of anticommuting fields.
 *
 */

void
Diagram::determine_sign() const
{
  if (_sign_determined) return;
  
  for (int t = 0; t < Field::n_anticommuting_types; ++t)
    {
      int n_open_chains = 0;
      int n_closed_chains = 0;

      const vector<int> ext_nodes = external_nodes();
      vector<bool> visited_node(n_nodes(), false);
      vector<bool> visited_edge(n_edges(), false);
      
      // loop over the open field chains
      
      vector<Field::pointer> field[2];
      vector<string> field_momentum[2];

      for (vector<int>::const_iterator n = ext_nodes.begin();
	   n != ext_nodes.end(); ++n)
	{
	  if (visited_node[*n]) continue;
	  
	  // find the edge connected to the current external node

	  int d, e;

	  for (d = 0; d < 2; ++d)
	    if (!_node_desc[*n]._edges[d].empty())
	      {
		e = _node_desc[*n]._edges[d].front();
		break;
	      }
	  
	  // check whether the corresponding field is anticommuting and whether
	  // it is the anti-particle

	  Field::pointer f = _line[e]._field[d];

	  if (f->_type != Field::anticommuting_type[t] || f->_particle) continue;

	  ++n_open_chains;
	  if (Field::anticommuting_type[t] == Field::Fermion)
	    _open_fermion_chains.push_back(vector<int>());

	  // insert the first field and its momentum into the list

	  field[0].push_back(f);
	  
	  int pos;
	  for (pos = 0; pos < _momentum_basis.size() &&
		 !_edge_desc[e]._momentum[pos]; ++pos) ;

	  if (pos == _momentum_basis.size())
	    field_momentum[0].push_back("");
	  else
	    field_momentum[0].push_back(_momentum_basis[pos]);

	  // follow the chain to the last field

	  visited_edge[e] = true;
	  if (Field::anticommuting_type[t] == Field::Fermion)
	    _open_fermion_chains.back().push_back(e);
	  int next = _edge_desc[e]._node[d];
	  while (!is_external_node(next))
	    {
	      vector<int>::const_iterator ep;
	      
	      for (d = 0; d < 2; ++d)
		for (ep = _node_desc[next]._edges[d].begin();
		     ep != _node_desc[next]._edges[d].end(); ++ep)
		  {
		    e = *ep;
		    
		    if (visited_edge[e]) continue;
		    
		    if (_line[e]._field[1-d]->_type ==
			Field::anticommuting_type[t])
		      {
			visited_edge[e] = true;
			if (Field::anticommuting_type[t] == Field::Fermion)
			  _open_fermion_chains.back().push_back(e);
			next = _edge_desc[e]._node[d];
			goto NextOpen;
		      }
		  }

	    NextOpen: ;
	    }

	  // insert the last field and its momentum into the list

	  field[1].push_back(_line[e]._field[1-d]);
		
	  for (pos = 0; pos < _momentum_basis.size() &&
		 !_edge_desc[e]._momentum[pos]; ++pos) ;
	  
	  if (pos == _momentum_basis.size())
	    field_momentum[1].push_back("");
	  else
	    field_momentum[1].push_back(_momentum_basis[pos]);
	  
	  visited_node[next] = true;
	}

      // update the sign according to the permutation of the anti-particle and
      // particle fields (the sign of the permutation is determined by couting
      // the number of inversions).

      if (n_open_chains > 1)
	for (int k = 0; k < 2; ++k)
	  for (int i = 0; i < n_open_chains; ++i)
	    for (int j = i+1; j < n_open_chains; ++j)
	      {
		if (field[k][j] > field[k][i])
		  _sign = -_sign;
		else if (field[k][j] == field[k][i])
		  {
		    if (field_momentum[k][j] > field_momentum[k][i])
		      _sign = -_sign;
		    else if (field_momentum[k][j] == field_momentum[k][i])
		      {
			cerr << "There is no way to discern two "
			     << "anticommuting fields\n";
			exit(1);
		      }
		  }
	      }
	  
      // loop over the closed particle chains
      
      for (int e = 0; e < n_edges(); ++e)
	{
	  if (is_external_edge(e) || visited_edge[e] ||
	      _line[e]._field[0]->_type!= Field::anticommuting_type[t]) continue;
	  
	  if (Field::anticommuting_type[t] == Field::Fermion)
	    {
	      _closed_fermion_chains.push_back(vector<int>());
	      _closed_fermion_chains.back().push_back(e);
	    }
	      
	  _sign = -_sign;
	  ++n_closed_chains;
	  int next = _edge_desc[e]._node[1];

	  visited_edge[e] = true;
	  visited_node[_edge_desc[e]._node[0]] = true;

	  while (!visited_node[next])
	    {
	      visited_node[next] = true;

	      vector<int>::const_iterator ep;

	      for (int d = 0; d < 2; ++d)
		for (ep = _node_desc[next]._edges[d].begin();
		     ep != _node_desc[next]._edges[d].end(); ++ep)
		  {
		    if (visited_edge[*ep]) continue;

		    visited_edge[*ep] = true;

		    if (_line[*ep]._field[1-d]->_type ==
			Field::anticommuting_type[t])
		      {
			next = _edge_desc[*ep]._node[d];
			if (Field::anticommuting_type[t] == Field::Fermion)
			  _closed_fermion_chains.back().push_back(*ep);
			goto NextClosed;
		      }
		  }

	    NextClosed: ;
	    }
	}
    }

  _sign_determined = true;
}

/******************************************************************************
 *                                                                            *
 * determine_symmetry_factor                                                  *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The symmetry factor determination is currently not implemented, since the
 * only way to create valid diagrams is through DiagramGenerator and during
 * generation this factor is calculated independently.
 *
 */

void
Diagram::determine_symmetry_factor() const
{
  if (_symmetry_factor_determined) return;
  
  cerr << "Symmetry factor determination is currently not implemented\n";
  exit(1);
}

/******************************************************************************
 *                                                                            *
 * print_vertex                                                               *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The printing of vertices is done according to a format specific to the 
 * vertex vector structure. Common to all definitions is the fact that all
 * momenta are assumed in-going. Adding further vertex types requires only
 * specialized use of
 *
 * 1) edge[n] - edge of the nth field in the vertex original fields
 *
 * 2) index[n] - vector index on the line of the nth field in the vertex
 *               original fields (order as in the vertex list file),
 *
 * 3) momentum[n] - in-going momentum on the line of the nth field,
 *
 * 4) position[t][n] - position on the list of vertex original fields
 *                     of the nth field of type t.
 *
 */

void
Diagram::print_vertex(ostream& output, int n, int fermion_chain_index) const
{
  Vertex::pointer v = _vertex[n];
  const int degree = v->_original_fields.size();

  // determine the indices and momenta of the original vertex fields.
  // All the momenta are in-going and the indices are compatible with those
  // generated by print_line().

  vector<int> edge(degree);
  vector<string> index(degree);
  vector<vector<int> > momentum(degree);

  vector<bool> assigned(degree, false);

  for (int d = 0; d < 2; ++d)
    for (vector<int>::const_iterator e = _node_desc[n]._edges[d].begin();
	 e != _node_desc[n]._edges[d].end(); ++e)
      {
	for (int i = 0; i < degree; ++i)
	  {
	    if (!assigned[i] && _line[*e]._field[1-d] == v->_original_fields[i])
	      {
		assigned[i] = true;

		edge[i] = *e;

		ostringstream current_index;
		current_index << "v" << n << "l" << *e;

		if (_edge_desc[*e]._node[0] == _edge_desc[*e]._node[1])
		  {
		    if (d) current_index << "out";
		    else current_index << "in";
		  }

		index[i] = current_index.str();

		for (int j = 0; j < _momentum_basis.size(); ++j)
		  momentum[i].push_back((1-2*d)*_edge_desc[*e]._momentum[j]);

		break;
	      }
	  }
      }

  ostringstream summed_index;
  summed_index << "v" << n;

  // make the map from the field type to the respective field position on
  // the original vertex field list.

  vector<vector<int> > position(Field::n_types);
  
  for (int i = 0; i < degree; ++i)
    position[v->_original_fields[i]->_type].push_back(i);

  // output according to the type

  switch (v->_type)
    {
    case Vertex::Identity:
      {
	if (v->_value.size() != 1)
	  {
	    cerr << "Diagram::print_vertex (Identity): "
		 << "incompatible vertex structure" << endl;

	    exit(1);
	  }

	output << "\t*(";
	print_vertex_value(output, v->_value[0], n, edge);
	output << ")\n";
      }
      break;
    case Vertex::FermionScalar:
      {
	if (v->_value.size() != 2)
	  {
	    cerr << "Diagram::print_vertex (FermionScalar): "
		 << "incompatible vertex structure" << endl;

	    exit(1);
	  }

	output << "\t*(+PL(" << fermion_chain_index << ")*(";
	print_vertex_value(output, v->_value[0], n, edge);
	output << ")\n\t  +PR(" << fermion_chain_index << ")*(";
	print_vertex_value(output, v->_value[1], n, edge);
	output << "))\n";
      }
      break;
    case Vertex::FermionVector:
      {
	if (v->_value.size() != 2)
	  {
	    cerr << "Diagram::print_vertex (FermionVector): "
		 << "incompatible vertex structure" << endl;

	    exit(1);
	  }

	output << "\t*(+PL(" << fermion_chain_index << ", "
	       << index[position[Field::Vector][0]] << ")*(";
	print_vertex_value(output, v->_value[0], n, edge);
	output << ")\n\t  +PR(" << fermion_chain_index << ", "
	       << index[position[Field::Vector][0]] << ")*(";
	print_vertex_value(output, v->_value[1], n, edge);
	output << "))\n";
      }
      break;
    case Vertex::VectorScalar:
      {
	if (v->_value.size() != 1)
	  {
	    cerr << "Diagram::print_vertex (VectorScalar): "
		 << "incompatible vertex structure" << endl;

	    exit(1);
	  }

	output << "\t*d_(" << index[position[Field::Vector][0]] << ", "
	       << index[position[Field::Vector][1]] << ")*(";
	print_vertex_value(output, v->_value[0], n, edge);
	output << ")\n";
      }
      break;
    case Vertex::DerivativeVectorScalar:
      {
	if (v->_value.size() != 1)
	  {
	    cerr << "Diagram::print_vertex (DerivativeVectorScalar): "
		 << "incompatible vertex structure" << endl;

	    exit(1);
	  }

	vector<int> vertex_momentum;

	transform(momentum[position[Field::Scalar][0]].begin(),
		  momentum[position[Field::Scalar][0]].end(),
		  momentum[position[Field::Scalar][1]].begin(),
		  back_inserter(vertex_momentum), minus<int>());

	output << "\t*(";
	print_momentum(output, vertex_momentum, _momentum_basis,
		       index[position[Field::Vector][0]]);
	output << ")*(";
	print_vertex_value(output, v->_value[0], n, edge);
	output << ")\n";
      }	
      break;
    case Vertex::GhostVector:
      {
	if (v->_value.size() != 1)
	  {
	    cerr << "Diagram::print_vertex (GostVector): "
		 << "incompatible vertex structure" << endl;

	    exit(1);
	  }

	output << "\t*(";
	print_momentum(output, momentum[position[Field::Ghost][0]],
		       _momentum_basis, index[position[Field::Vector][0]]);
	output << ")*(";
	print_vertex_value(output, v->_value[0], n, edge);
	output << ")\n";
      }
      break;
    case Vertex::TripleVector:
      {
	if (v->_value.size() != 1)
	  {
	    cerr << "Diagram::print_vertex (TripleVector): "
		 << "incompatible vertex structure" << endl;

	    exit(1);
	  }

	vector<int> vertex_momentum[3];
	
	transform(momentum[0].begin(), momentum[0].end(), momentum[1].begin(),
		  back_inserter(vertex_momentum[2]), minus<int>());
	transform(momentum[1].begin(), momentum[1].end(), momentum[2].begin(),
		  back_inserter(vertex_momentum[0]), minus<int>());
	transform(momentum[2].begin(), momentum[2].end(), momentum[0].begin(),
		  back_inserter(vertex_momentum[1]), minus<int>());

	output << "\t*(+(";
	print_momentum(output, vertex_momentum[0], _momentum_basis, index[0]);
	output << ")*d_(" << index[1] << ", " << index[2] << ")\n\t  +(";
	print_momentum(output, vertex_momentum[1], _momentum_basis, index[1]);
	output << ")*d_(" << index[0] << ", " << index[2] << ")\n\t  +(";
	print_momentum(output, vertex_momentum[2], _momentum_basis, index[2]);
	output << ")*d_(" << index[0] << ", " << index[1] << "))\n\t*(";
	print_vertex_value(output, v->_value[0], n, edge);
	output << ")\n";
      }
      break;
    case Vertex::QuadrupleVector:
      {
	if (v->_value.size() != 3)
	  {
	    cerr << "Diagram::print_vertex (QuadrupleVector): "
		 << "incompatible vertex structure" << endl;

	    exit(1);
	  }

	output << "\t*(+d_(" << index[0] << ", " << index[1] << ")*d_("
	       << index[2] << ", " << index[3] << ")*(";
	print_vertex_value(output, v->_value[0], n, edge);
	output << ")\n\t  +d_(" << index[0] << ", " << index[2] << ")*d_(" 
	       << index[1] << ", " << index[3] << ")*(";
	print_vertex_value(output, v->_value[1], n, edge);
	output << ")\n\t  +d_(" << index[0] << ", " << index[3] << ")*d_("
	       << index[1] << ", " << index[2] << ")*(";
	print_vertex_value(output, v->_value[2], n, edge);
	output << "))\n";
      }	
      break;
    case Vertex::ScalarCT:
      {
	if (v->_value.size() != 2)
	  {
	    cerr << "Diagram::print_vertex (ScalarCT): "
		 << "incompatible vertex structure" << endl;

	    exit(1);
	  }

	output << "\t*(+(";
	print_momentum(output, momentum[0], _momentum_basis, summed_index.str());
	output << ")*(";
	print_momentum(output, momentum[0], _momentum_basis, summed_index.str());
	output << ")*(";
	print_vertex_value(output, v->_value[0], n, edge);
	output << ")\n\t  +(";
	print_vertex_value(output, v->_value[1], n, edge);
	output << "))\n";
      }
      break;
    case Vertex::FermionCT:
      {
	if (v->_value.size() != 4)
	  {
	    cerr << "Diagram::print_vertex (FermionCT): "
		 << "incompatible vertex structure" << endl;

	    exit(1);
	  }

	output << "\t*(+PL(" << fermion_chain_index << ", ";
	print_momentum(output, momentum[1], _momentum_basis);
	output << ")*(";
	print_vertex_value(output, v->_value[0], n, edge);
	output << ")\n\t  +PR("
	       << fermion_chain_index << ", ";
	print_momentum(output, momentum[1], _momentum_basis);
	output << ")*(";
	print_vertex_value(output, v->_value[1], n, edge);
	output << ")\n\t  +PL("
	       << fermion_chain_index << ")*(";
	print_vertex_value(output, v->_value[2], n, edge);
	output << ")\n\t  +PR(" << fermion_chain_index << ")*(";
	print_vertex_value(output, v->_value[3], n, edge);
	output << "))\n";
      }
      break;
    case Vertex::VectorCT:
      {
	if (v->_value.size() != 2)
	  {
	    cerr << "Diagram::print_vertex (VectorCT): "
		 << "incompatible vertex structure" << endl;

	    exit(1);
	  }

	output << "\t*(+((";
	print_momentum(output, momentum[0], _momentum_basis, summed_index.str());
	output << ")*(";
	print_momentum(output, momentum[0], _momentum_basis, summed_index.str());
	output << ")*d_(" << index[0] << ", " << index[1] << ")-(";
	print_momentum(output, momentum[0], _momentum_basis, index[0]);
	output << ")*(";
	print_momentum(output, momentum[0], _momentum_basis, index[1]);
	output << "))\n\t  *(";
	print_vertex_value(output, v->_value[0], n, edge);
	output << ")\n\t  +"
	       << "d_(" << index[0] << ", " << index[1] << ")*(";
	print_vertex_value(output, v->_value[1], n, edge);
	output << "))\n";
      }
      break;
    case Vertex::VectorScalarCT:
      {
	if (v->_value.size() != 1)
	  {
	    cerr << "Diagram::print_vertex (VectorScalarCT): "
		 << "incompatible vertex structure" << endl;

	    exit(1);
	  }

	output << "\t*(";
	print_momentum(output, momentum[position[Field::Vector][0]],
		       _momentum_basis, index[position[Field::Vector][0]]);
	output << ")*(";
	print_vertex_value(output, v->_value[0], n, edge);
	output << ")\n";
      }
      break;
    }
}

/******************************************************************************
 *                                                                            *
 * print_vertex_value                                                         *
 *                                                                            *
 ******************************************************************************/

void
Diagram::print_vertex_value(ostream& output, 
			    const string& v, 
			    int n, 
			    const vector<int>& e) const
{
  int begin = 0, end;
	  
  while ((end = v.find('%', begin)) != string::npos)
    {
      output << v.substr(begin, end-begin);
	      
      switch(v[end+1])
	{
	case 'v':
	  output << n;
	  break;
	case 'l':
	  output << e[v[end+2]-49];
	  ++end;
	  break;
	default:
	  cerr << "Diagram::print_vertex_value: %" << v[end+1]
	       << " unknown switch" << endl;
	  exit(1);
	}

      begin = end+2;
    }

  output << v.substr(begin);
}

/******************************************************************************
 *                                                                            *
 * print_line                                                                 *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The printing of lines is divided into two categories
 *
 * 1) external lines.
 *
 *    The type of the polarization vector or spinor for vector and fermion 
 *    fields respectively is determined according to the momentum direction of
 *    the field (in-going or out-going to the diagram) and to its nature 
 *    (particle or anti-particle).
 *
 * 2) internal lines.
 *
 *    All propagators but the fermionic are assumed to be undirected. For
 *    fermions the momentum direction is from the particle to the anti-particle.
 *
 */

void
Diagram::print_line(ostream& output, int e, int fermion_chain_index) const
{
  if (is_external_edge(e))
    {
      int n;
      Field::pointer f;
      int line_direction;

      if (is_external_node(_edge_desc[e]._node[1]))
	{
	  n = _edge_desc[e]._node[0];
	  f = _line[e]._field[0];
	  line_direction = -1;
	}
      else
	{
	  n = _edge_desc[e]._node[1];
	  f = _line[e]._field[1];
	  line_direction = +1;
	}

      int p = 0;
      for (; !_edge_desc[e]._momentum[p]; ++p) ;

      if (f->_wave_function[0].empty() || f->_wave_function[1].empty())
	{	
	  // default external wave functions

	  switch (f->_type)
	    {
	    case Field::Ghost:
	    case Field::Scalar:
	      {
		output << "\t*1\n";
	      }
	      break;
	    case Field::Fermion:
	      {
		if (f->_particle)
		  if (line_direction * _edge_desc[e]._momentum[p] > 0)
		    output << "\t*U(";
		  else
		    output << "\t*V(";
		else
		  if (line_direction * _edge_desc[e]._momentum[p] < 0)
		    output << "\t*UBar(";
		  else
		    output << "\t*VBar(";
		
		output << fermion_chain_index << ", " << _momentum_basis[p]
		       << ", " << f->_mass << ")\n";
	      }
	      break;
	    case Field::Vector:
	      {
		if (line_direction * _edge_desc[e]._momentum[p] > 0)
		  output << "\t*Eps(";
		else
		  output << "\t*EpsStar(";
		
		output << "v" << n << "l" << e << ", " << _momentum_basis[p]
		       << ", " << f->_mass << ")\n";
	      }
	      break;
	    }
	}
      else
	{
	  // user defined external wave functions

	  output << "\t*";

	  const string* wave_function = &f->_wave_function[0];
	  if (line_direction * _edge_desc[e]._momentum[p] < 0)
	    wave_function = &f->_wave_function[1];

	  int begin = 0, end;
	  
	  while ((end = wave_function->find('%', begin)) != string::npos)
	    {
	      output << wave_function->substr(begin, end-begin);
	      
	      switch((*wave_function)[end+1])
		{
		case 'p':
		  output << _momentum_basis[p];
		  break;
		case 'm':
		  output << f->_mass;
		  break;
		case 'v':
		  output << n;
		  break;
		case 'l':
		  output << e;
		  break;
		case 'c':
		  output << fermion_chain_index;
		  break;
		default:
		  cerr << "Diagram::print_line: %" << (*wave_function)[end+1]
		       << " unknown switch" << endl;
		  exit(1);
		}

	      begin = end+2;
	    }

	  output << wave_function->substr(begin) << "\n";
	}
    }
  else
    {
      vector<int> line_momentum;
      const int source = _edge_desc[e]._node[0];
      const int target = _edge_desc[e]._node[1];
      
      switch (_line[e]._field[0]->_type)
	{
	case Field::Scalar:
	  {
	    output << "\t*DS(";
	    line_momentum = _edge_desc[e]._momentum;
	  }
	  break;
	case Field::Ghost:
	  {
	    output << "\t*DG(";
	    line_momentum = _edge_desc[e]._momentum;
	  }
	  break;
	case Field::Vector:
	  {
	    output << "\t*DV(v" << source << "l" << e;
	    if (source == target)
	      output << "in, v" << source << "l" << e << "out, ";
	    else
	      output << ", v" << target << "l" << e << ", ";
	    line_momentum = _edge_desc[e]._momentum;
	  }
	  break;
	case Field::Fermion:
	  {
	    output << "\t*SF(" << fermion_chain_index << ", ";
	    if (_line[e]._field[1]->_particle)
	      line_momentum = _edge_desc[e]._momentum;
	    else
	      transform(_edge_desc[e]._momentum.begin(),
			_edge_desc[e]._momentum.end(),
			back_inserter(line_momentum),
			negate<int>());
	  }
	  break;
	}

      print_momentum(output, line_momentum, _momentum_basis);
      output << ", " << _line[e]._field[0]->_mass << ")\n";
    }
}

/******************************************************************************
 *                                                                            *
 * print_momentum                                                             *
 *                                                                            *
 ******************************************************************************/

void
Diagram::print_momentum(ostream& output,
			const vector<int>& momentum,
			const vector<string>& momentum_basis,
			const string& index) const
{
  bool first_output = true;

  for (int i = 0; i < momentum.size(); ++i)
    {
      if (momentum[i] > 0)
	{
	  if (!first_output) output << "+";
	  else first_output = false;
	  
	  if (momentum[i] != 1) output << momentum[i] << "*";
	    
	  output << momentum_basis[i];

	  if (!index.empty()) output << "(" << index << ")";
	}
      else if (momentum[i] < 0)
	{
	  if (first_output) first_output = false;

	  if (momentum[i] != -1) output << momentum[i] << "*";
	  else output << "-";

	  output << momentum_basis[i];

	  if (!index.empty()) output << "(" << index << ")";
	}
    }

  if (first_output) output << "0";
}

/******************************************************************************
 *                                                                            *
 * print_fermion_chain                                                        *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Fermion chains are printed starting from a node. For open fermion chains the
 * external node with the anti-particle field should be chosed and the external
 * edge should be marked as visited.
 *
 */

void
Diagram::print_fermion_chain(ostream& output,
			     int starting_node,
			     int fermion_chain_index,
			     vector<bool>& visited_node,
			     vector<bool>& visited_edge) const
{
  int next = starting_node;

  while (!visited_node[next] && !is_external_node(next))
    {
      print_vertex(output, next, fermion_chain_index);
      visited_node[next] = true;
	  
      bool fermion = false;
      for (int d = 0; d < 2 && !fermion; ++d)
	for (vector<int>::const_iterator e = _node_desc[next]._edges[d].begin();
	     e != _node_desc[next]._edges[d].end(); ++e)
	  {
	    if (!visited_edge[*e] && _line[*e]._field[1-d]->_type == 
		Field::Fermion && _line[*e]._field[1-d]->_particle)
	      {
		next = _edge_desc[*e]._node[d];
		
		print_line(output, *e, fermion_chain_index);
		visited_edge[*e] = true;
		
		fermion = true;
		break;
	      }
	  }
    }
  
  if (is_external_node(next)) visited_node[next] = true;
}

/******************************************************************************
 *                                                                            *
 * print                                                                      *
 *                                                                            *
 ******************************************************************************/

void
Diagram::print(ostream& output) const
{
  if (!_initialized)
    {
      cerr << "Uninitialized diagrams are not printable\n";
      exit(1);
    }

  // print the sign and the symmetry factor

  determine_sign();
  determine_symmetry_factor();

  if (_sign < 0) output << "\t-";
  else output << "\t+";

  output << _symmetry_factor;

  // print the imaginary factor (every vertex and every internal line contribute
  // one imaginary unit)

  const int power = n_nodes()+n_edges()-2*n_external_edges();
  const int sign_contribution = power/2;
  const int imaginary_contribution = power-2*sign_contribution;
    
  if (sign_contribution & 1)
    if (imaginary_contribution) output << "*(-i_)\n";
    else output << "*(-1)\n";
  else
    if (imaginary_contribution) output << "*(+i_)\n";
    else output << "*(+1)\n";
    
  // print the lines and vertices starting from open fermion chains, then closed
  // fermion chains and at last the remaining vertices and lines.

  vector<bool> visited_node(n_nodes(), false);
  vector<bool> visited_edge(n_edges(), false);
  int chain_count = 0;

  // print the open fermion chains

  const vector<int> ext_nodes = external_nodes();
      
  for (vector<int>::const_iterator n = ext_nodes.begin();
       n != ext_nodes.end(); ++n)
    {
      if (visited_node[*n]) continue;
	  
      for (int d = 0; d < 2; ++d)
	if (!_node_desc[*n]._edges[d].empty())
	  {
	    int e = _node_desc[*n]._edges[d].front();
	    
	    if (_line[e]._field[d]->_type != Field::Fermion ||
		_line[e]._field[d]->_particle) break;
	    
	    visited_node[*n] = true;
	    int next = _edge_desc[e]._node[d];
	    
	    print_line(output, e, chain_count);
	    visited_edge[e] = true;

	    print_fermion_chain(output, next, chain_count++,
				visited_node, visited_edge);
	  }
    }

  // print the closed fermion chains
      
  for (int e = 0; e < n_edges(); ++e)
    {
      if (visited_edge[e] || is_external_edge(e) ||
	  _line[e]._field[0]->_type != Field::Fermion) continue;

      print_fermion_chain(output, _edge_desc[e]._node[0], chain_count++,
			  visited_node, visited_edge);
     }

  // print the remaining vertices

  for (int n = 0; n < n_nodes(); ++n)
    if (!visited_node[n] && !is_external_node(n))
      print_vertex(output, n);

  // print the remaining lines

  for (int e = 0; e < n_edges(); ++e)
    if (!visited_edge[e])
      print_line(output, e);
}

/******************************************************************************
 *                                                                            *
 * print_info                                                                 *
 *                                                                            *
 ******************************************************************************/

void
Diagram::print_info(ostream& output, const char comment_char) const
{
  output << comment_char << "\tinternal fields: ";

  for (int e = 0; e < n_edges(); ++e)
    if (!is_external_edge(e))
      output << _line[e]._field[0]->_name << " ";

  output << '\n' << comment_char << '\n' << comment_char
	 << "\tdetailed description:\n" << comment_char << '\n';

  for (int e = 0; e < n_edges(); ++e)
    {
      output << comment_char << '\t' << e << ": " << _edge_desc[e]._node[0]
	     << " -> " << _edge_desc[e]._node[1];

      if (!is_external_edge(e))
	output << ", " << _line[e]._field[0]->_identifier << " -> "
	       << _line[e]._field[1]->_identifier;

      output << ", ";
      print_momentum(output, _edge_desc[e]._momentum, _momentum_basis);
      output << '\n';
    }
}
