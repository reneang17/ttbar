/******************************************************************************
 *                                                                            *
 * Copyright (C) 2002 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#ifndef TOPOLOGY_HPP
#define TOPOLOGY_HPP 1

#include <set>
#include <list>
#include <stack>
#include <vector>
#include <string>
#include <utility>
#include <iterator>
#include <iostream>

#ifdef DEBUG
#include "Debug.hpp"
#endif

using namespace std;

/******************************************************************************
 *                                                                            *
 * Debugging and printing utilities of wider interest                         *
 *                                                                            *
 ******************************************************************************/

/// output of vectors of integers

inline
ostream&
operator<<(ostream& output, const vector<int>& v)
{
  copy(v.begin(), v.end(), ostream_iterator<int>(output, " "));
  output << "\n";
  return output;
}

/// output of matrices of integers

inline
ostream&
operator<<(ostream& output, const vector<vector<int> >& m)
{
  for (vector<vector<int> >::const_iterator r = m.begin(); r != m.end(); ++r)
    output << *r;
  return output;
}

/******************************************************************************
 *                                                                            *
 * Topology                                                                   *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The QFT topology is implemented as a directed pseudo-graph. Nodes are
 * elements of the set {0, ..., n_nodes-1}. Edges are pairs of nodes with a
 * momentum vector. The Topology class contains both an adjacency matrix and an
 * adjacency list.
 *
 */

class Topology
{
/******************************************************************************
 ******************************************************************************
 **                                                                          **
 ** Public interface part                                                    **
 **                                                                          **
 ******************************************************************************
 ******************************************************************************/

public:

  /****************************************************************************
   *                                                                          *
   * construction                                                             *
   *                                                                          *
   ****************************************************************************/
   
  explicit Topology(int n_nodes);
  
  virtual ~Topology() {};

  virtual void
  insert_edge(int source_node, int target_node);
  
  virtual void
  insert_edge(int source_node, int target_node, const string& momentum);

  /****************************************************************************
   *                                                                          *
   * modification                                                             *
   *                                                                          *
   ****************************************************************************/
   
  virtual void
  erase_edge(int edge);

  /// the direction of the edge is irrelevant
  virtual void
  erase_edge(int first_node, int second_node);

  void
  assign_momenta(const string& external_momentum_prefix = "p",
		 const string& loop_momentum_prefix = "k");

  void
  assign_momentum(const string& momentum, int edge, int direction);

  void
  assign_external_momentum(const string& momentum, int edge, int direction);

  void
  copy_external_momentum(int target_edge, int source_edge, const Topology& t);

  /****************************************************************************
   *                                                                          *
   * node and edge properties                                                 *
   *                                                                          *
   ****************************************************************************/
   
  int
  n_nodes() const;

  int
  n_external_nodes() const;

  int
  n_edges() const;

  int
  n_external_edges() const;

  vector<int>
  external_nodes() const;

  bool
  is_external_node(int node) const;

  /// first the in-going edges (with respect to the topology not to the
  /// external nodes), then the out-going edges
  pair<vector<int>, vector<int> >
  external_edges() const;
  
  bool
  is_external_edge(int edge) const;

  /// first the in-going edges, then the out-going edges
  pair<vector<int>, vector<int> >
  adjacent_edges(int node) const;

  /// first the in-going edges, then the out-going edges
  pair<vector<int>, vector<int> >
  adjacent_edges(int first_node, int second_node) const;

  /// first the source node, then the target node
  pair<int, int>
  adjacent_nodes(int edge) const;
  
  vector<int>
  momentum(int edge) const;

  vector<string>
  momentum_basis() const;

  int
  adjacency(int first_node, int second_node) const;

  /****************************************************************************
   *                                                                          *
   * topological properties                                                   *
   *                                                                          *
   ****************************************************************************/
   
  int
  n_cycles() const;

  int
  loop_order() const;

  bool
  is_connected() const;

  vector<vector<int> >
  biconnected_components() const;

  vector<int>
  node_labelling() const; 

  vector<vector<int> >
  node_symmetry_group() const;

  /// subgroup of the symmetry group which leaves the external nodes invariant
  vector<vector<int> >
  internal_node_symmetry_subgroup() const;

  vector<vector<int> >
  independent_external_node_permutations() const;
  
  bool
  is_one_particle_irreducible() const;

  bool
  has_loops() const;

  bool
  has_tadpoles() const;

  bool
  has_self_energies() const;

  bool
  is_on_shell() const;

  /****************************************************************************
   *                                                                          *
   * comparison                                                               *
   *                                                                          *
   ****************************************************************************/
   
  virtual int
  compare(const Topology& t) const;

  /****************************************************************************
   *                                                                          *
   * output                                                                   *
   *                                                                          *
   ****************************************************************************/
   
  virtual void
  print(ostream& output = cout) const;

  virtual void
  print_edge_list(ostream& output = cout) const;

  virtual void
  postscript_print(const string& file_name) const;

  void
  print_adjacency_matrix(ostream& output = cout) const;

  void
  print_adjacency_list(ostream& output = cout) const;

  void
  print_momentum(int edge, ostream& output = cout) const;

  void
  print_normalized_momentum(int edge, ostream& output = cout) const;
  
protected:

/******************************************************************************
 ******************************************************************************
 **                                                                          **
 ** Private implementation part                                              **
 **                                                                          **
 ******************************************************************************
 ******************************************************************************/

  /****************************************************************************
   *                                                                          *
   * NodeDescriptor                                                           *
   *                                                                          *
   ****************************************************************************/

  // first the in-going edges, then the out-going edges
  
  struct NodeDescriptor
  {
    vector<int> _edges[2];
  };

  vector<NodeDescriptor> _node_desc;
  
  /****************************************************************************
   *                                                                          *
   * EdgeDescriptor                                                           *
   *                                                                          *
   ****************************************************************************/
  
  // first the source node, then the target node
  
  struct EdgeDescriptor
  {
    int         _node[2];
    
    vector<int> _momentum;
  };
  
  vector<EdgeDescriptor> _edge_desc;

  vector<string>         _momentum_basis;
  
protected:

  vector<int>
  subgraph(int starting_node, const vector<bool>& forbidden_edge) const;
  
private:

  /// Topology must be constructed with a known number of nodes
  Topology();

private:

  void
  insert_edge_common(int source_node, int target_node);

  vector<vector<int> >
  symmetry_group_common(const list<set<int> >& partition) const;

  vector<bool>
  external_edge_flags() const;

  /****************************************************************************
   *                                                                          *
   * BccDfsDescriptor                                                         *
   *                                                                          *
   ****************************************************************************/
  
  struct BccDfsDescriptor
  {
    vector<vector<int> > _complete_components;

    stack<int>           _incomplete_components;
    
    int                  _count;

    vector<bool>         _visited;

    vector<int>          _parent;

    vector<int>          _index;

    vector<int>          _ancestor_index;
  };
  
  void
  bcc_dfs(int node, BccDfsDescriptor& desc) const;

  /// compares the adjacency matrix transformed by two node permutations
  int
  compare_adjacency_matrix(const vector<int>& first_permutation,
			   const vector<int>& second_permutation) const;
  
  list<set<int> >
  equitable_partition() const;

  bool
  refine(list<set<int> >& partition, list<set<int> >& active) const;

  /****************************************************************************
   *                                                                          *
   * PartitionDescriptor                                                      *
   *                                                                          *
   ****************************************************************************/
  
  struct PartitionDescriptor
  {
    list<set<int> >           _partition;
    
    list<set<int> >::iterator _cell;
    
    set<int>::iterator        _node;
  };
  
  void
  init_partition_stack(stack<PartitionDescriptor>& partition_stack,
		       const list<set<int> >& partition) const;

  vector<int>
  next_leaf(stack<PartitionDescriptor>& partition_stack) const;

  /****************************************************************************
   *                                                                          *
   * NodeDegree                                                               *
   *                                                                          *
   ****************************************************************************/
  
  /// the generalized degree of a node with respect to a set of nodes
  
  class NodeDegree
  {
  public:
    
    NodeDegree();
    
    /// n should be the adjacency of two nodes, or minus adjacency for loops
    void
    insert_adjacency(int n);
    
    bool
    operator<(const NodeDegree&) const;
    
  private:
    
    /// graph theoretical degree of the node
    int           _total_degree;
    
    int           _key_size;
    
    /// adjacencies
    multiset<int> _key;
  };
  
private:
  
  bool                 _user_assigned_momenta;

  mutable vector<int>  _node_labelling;

  vector<vector<int> > _adjacency_matrix;
 
  friend class TopologyGenerator;
};

/******************************************************************************
 *                                                                            *
 * Interface of the Topology class, other than methods and friends            *
 *                                                                            *
 ******************************************************************************/

inline
bool
operator<(const Topology& t1, const Topology& t2)
{
  return t1.compare(t2) < 0;
}

inline
int
compare(const Topology& t1, const Topology& t2)
{
  return t1.compare(t2);
}

inline
bool
isomorphic(const Topology& t1, const Topology& t2)
{
  return t1.compare(t2) == 0;
}

inline
ostream&
operator<<(ostream& output, const Topology& t)
{
  t.print(output);

  return output;
}

/******************************************************************************
 *                                                                            *
 * Inlines of the Topology class                                              *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * If the implementation of the vector container provides a small default space
 * then during edge additions the container is reallocated. There is a small
 * gain of performance if we reserve enough space at the beginning. We use an
 * upper bound of twice the number of nodes, which is based on the fact that
 * this is the number of edges that corresponds to a topology on only quadruple
 * nodes.
 *
 */

inline
Topology::Topology(int n_nodes) :
  _node_desc(n_nodes),
  _user_assigned_momenta(false),
  _adjacency_matrix(n_nodes, vector<int>(n_nodes))
{
  _edge_desc.reserve(2*n_nodes);
}

inline
int
Topology::n_nodes() const
{
  return _node_desc.size();
}

inline
int
Topology::n_external_nodes() const
{
  return external_nodes().size();
}

inline
int
Topology::n_edges() const
{
  return _edge_desc.size();
}

inline
int
Topology::n_external_edges() const
{
  return external_nodes().size();
}

inline
bool
Topology::is_external_node(int n) const
{
  return _node_desc[n]._edges[0].size()+_node_desc[n]._edges[1].size() == 1;
}

inline
bool
Topology::is_external_edge(int e) const
{
  return is_external_node(_edge_desc[e]._node[0]) ||
    is_external_node(_edge_desc[e]._node[1]);
}

inline
pair<vector<int>, vector<int> >
Topology::adjacent_edges(int n) const
{
  return make_pair(_node_desc[n]._edges[0], _node_desc[n]._edges[1]);
}

inline
pair<int, int>
Topology::adjacent_nodes(int e) const
{
  return make_pair(_edge_desc[e]._node[0], _edge_desc[e]._node[1]);
}

inline
vector<int>
Topology::momentum(int e) const
{
  return _edge_desc[e]._momentum;
}

inline
vector<string>
Topology::momentum_basis() const
{
  return _momentum_basis;
}

inline
int
Topology::adjacency(int n1, int n2) const
{
  return _adjacency_matrix[n1][n2];
}

inline
int
Topology::loop_order() const
{
  return n_cycles();
}

inline
bool
Topology::is_connected() const
{
  return subgraph(0, vector<bool>(n_edges(), false)).size() == n_nodes();
}

inline
vector<vector<int> >
Topology::node_symmetry_group() const
{
  return symmetry_group_common(equitable_partition());
}

inline
void
Topology::print_adjacency_matrix(ostream& output) const
{
  output << _adjacency_matrix;
}

/******************************************************************************
 *                                                                            *
 * Inlines of the NodeDegree class                                            *
 *                                                                            *
 ******************************************************************************/

inline
Topology::NodeDegree::NodeDegree() : _total_degree(0), _key_size(0)
{}

inline
void
Topology::NodeDegree::insert_adjacency(int n)
{
  if (!n) return;

  if (n > 0) _total_degree += n;
  else _total_degree -= n;
  
  ++_key_size;
  _key.insert(n);
}

inline
bool
Topology::NodeDegree::operator<(const NodeDegree& d) const
{
  if (_total_degree != d._total_degree) return _total_degree < d._total_degree;
  if (_key_size != d._key_size) return _key_size < d._key_size;
  return _key < d._key;
}

#endif
