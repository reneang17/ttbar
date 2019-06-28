/******************************************************************************
 *                                                                            *
 * Copyright (C) 2006 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#ifndef SCALARDIAGRAM_HPP
#define SCALARDIAGRAM_HPP

#include "Topology.hpp"

using namespace std;

/******************************************************************************
 *                                                                            *
 * ScalarDiagram                                                              *
 *                                                                            *
 ******************************************************************************/

class Prototype;

/**
 *
 * A ScalarDiagram is just a Topology with masses assigned to edges.
 *
 */

class ScalarDiagram : public Topology
{
public:

  explicit ScalarDiagram(int n_nodes);

  virtual ~ScalarDiagram() {};

  virtual void
  insert_edge(int source_node, int target_node, const string& mass = "");

  void
  assign_mass(const string& mass, int edge);

  string
  mass(int edge) const;

  vector<pair<int, int> > 
  edge_labelling() const;

  vector<vector<pair<int, int> > >
  nontrivial_edge_symmetry_group() const;

  vector<vector<pair<int, int> > >
  symmetric_multiple_edges() const;

  vector<vector<pair<int, int> > >
  edge_symmetry_group() const;

  void
  adapt_momentum_distribution(const vector<int>& subdiagram_edges);

  ScalarDiagram
  reduced_diagram(const vector<int>& subdiagram_edges) const;

  vector<pair<Prototype, vector<int> > >
  subdiagram_prototypes(const vector<int>& subdiagram_edges) const;
  
  vector<pair<Prototype, vector<int> > >
  reduced_diagram_prototypes(const vector<int>& subdiagram_edges) const;
  
  vector<vector<int> >
  LME_subdiagrams(const vector<string>& large_masses) const;

  vector<vector<int> >
  cuts(const vector<int>& left_edges, const vector<int>& right_edges) const;

  virtual int
  compare(const ScalarDiagram& d) const;

  virtual void
  print(ostream& output = cout) const;

  virtual void
  print_edge_list(ostream& output = cout) const;

private:

  /// the topology needs to be initialized with a node number
  ScalarDiagram();

  /// this is not implemented yet...
  virtual void erase_edge() {};

  /// first the edge number then its direction +/- 1
  vector<pair<int, int> > 
  edge_labelling(const vector<int>& node_permutation) const;

  vector<string>
  momentum_labelling(vector<string> momenta, vector<string> squares) const;

  void
  build_cuts(const vector<int>& left_nodes,
	     const vector<int>& right_nodes,
	     const vector<int>& available_edges,
	     int last,
	     vector<int>& cut,
	     vector<bool>& forbidden_edges,
	     vector<vector<int> >& cut_list) const;

protected:

  vector<string>                  _mass;

  mutable vector<string>          _momentum_labelling;

  mutable vector<pair<int, int> > _edge_labelling;
};

/******************************************************************************
 *                                                                            *
 * Interface of the ScalarDiagram class, other than methods and friends       *
 *                                                                            *
 ******************************************************************************/

inline
bool
operator<(const ScalarDiagram& d1, const ScalarDiagram& d2)
{
  return d1.compare(d2) < 0;
}

inline
int
compare(const ScalarDiagram& d1, const ScalarDiagram& d2)
{
  return d1.compare(d2);
}

inline
bool
isomorphic(const ScalarDiagram& d1, const ScalarDiagram& d2)
{
  return d1.compare(d2) == 0;
}

inline
ostream&
operator<<(ostream& output, const ScalarDiagram& d)
{
  d.print(output);
  return output;
}

/******************************************************************************
 *                                                                            *
 * Inlines of the ScalarDiagram class                                         *
 *                                                                            *
 ******************************************************************************/

inline
ScalarDiagram::ScalarDiagram(int n_nodes) : Topology(n_nodes)
{}

inline
void
ScalarDiagram::assign_mass(const string& mass, int edge)
{
  if (edge < n_edges()) _mass[edge] = mass;
  _edge_labelling.clear();
}

inline
string
ScalarDiagram::mass(int edge) const
{
  return _mass[edge];
}

#endif
