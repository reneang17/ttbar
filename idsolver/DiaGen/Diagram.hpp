/******************************************************************************
 *                                                                            *
 * Copyright (C) 2002 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#ifndef DIAGRAM_HPP
#define DIAGRAM_HPP 1

#include <vector>
#include <utility>
#include <iostream>
#include "Field.hpp"
#include "Vertex.hpp"
#include "Topology.hpp"

#ifdef DEBUG
#include "Debug.hpp"
#endif

using namespace std;

/******************************************************************************
 *                                                                            *
 * LineDescriptor                                                             *
 *                                                                            *
 ******************************************************************************/

struct LineDescriptor
{
  Field::pointer _field[2];
};

/******************************************************************************
 *                                                                            *
 * Diagram                                                                    *
 *                                                                            *
 ******************************************************************************/

/// QFT diagram

class Diagram : public Topology
{
public:

  explicit Diagram(const Topology& t);

  pair<Field::pointer, Field::pointer>
  line(int edge) const;

  Vertex::pointer
  vertex(int node) const;

  virtual int
  n_fermion_loops() const;

  virtual vector<vector<int> >
  open_fermion_chains() const;

  virtual vector<vector<int> >
  closed_fermion_chains() const;

  virtual void
  print(ostream& output) const;

  virtual void
  print_info(ostream& output, const char comment_char = '*') const;

private:

  /// these operations can only be performed at the topology level
  virtual void insert_edge() {};
  virtual void erase_edge() {};

protected:

  virtual void
  determine_sign() const;

  virtual void
  determine_symmetry_factor() const;

  virtual void
  print_vertex(ostream& output, int node, int fermion_chain_index = 0) const;

  virtual void
  print_vertex_value(ostream& output,
		     const string& value,
		     int node,
		     const vector<int>& edge) const;

  virtual void
  print_line(ostream& output, int edge, int fermion_chain_index = 0) const;

  virtual void
  print_momentum(ostream& output,
		 const vector<int>& momentum,
		 const vector<string>& momentum_basis,
		 const string& index = "") const;

  virtual void
  print_fermion_chain(ostream& output,
		      int starting_edge,
		      int fermion_chain_index,
		      vector<bool>& visited_node,
		      vector<bool>& visited_edge) const;

protected:

  bool                         _initialized;
  
  mutable int                  _sign;

  mutable bool                 _sign_determined;
  
  mutable int                  _symmetry_factor;

  mutable bool                 _symmetry_factor_determined;

  mutable vector<vector<int> > _open_fermion_chains;

  mutable vector<vector<int> > _closed_fermion_chains;

  vector<Vertex::pointer>      _vertex;

  vector<LineDescriptor>       _line;

  friend class DiagramGenerator;
};

/******************************************************************************
 *                                                                            *
 * Inlines of the Diagram class                                               *
 *                                                                            *
 ******************************************************************************/

inline
Diagram::Diagram(const Topology& t) :
  Topology(t),
  _initialized(false),
  _sign(1),
  _sign_determined(false),
  _symmetry_factor(1),
  _symmetry_factor_determined(false),
  _vertex(t.n_nodes()),
  _line(t.n_edges())
{}

inline
pair<Field::pointer, Field::pointer>
Diagram::line(int edge) const
{
  return make_pair(_line[edge]._field[0], _line[edge]._field[1]);
}

inline
Vertex::pointer
Diagram::vertex(int node) const
{
  return _vertex[node];
}

#endif
