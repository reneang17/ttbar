/******************************************************************************
 *                                                                            *
 * Copyright (C) 2002 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#ifndef TOPOLOGY_GENERATOR_HPP
#define TOPOLOGY_GENERATOR_HPP 1

#include <set>
#include <vector>
#include "Topology.hpp"

#ifdef DEBUG
#include "Debug.hpp"
#endif

using namespace std;

/******************************************************************************
 *                                                                            *
 * TopologyGenerator                                                          *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The algorithm consists of two steps
 *
 * - Topologies are generated with partial rejection of isomorphic ones. The
 *   adjacency matrix is filled starting from the last node by connecting 
 *   succeding nodes to their children (nodes with lower index). At any stage
 *   the connections are sorted among children that are still identical. The
 *   newly connected node is compared to nodes with which it could be exchanged.
 *   If this transposition would lead to a lexicographically greater adjacency
 *   matrix, then the current matrix is rejected. This phase could be made to
 *   generate only independent topologies if the problem of symmetries induced
 *   by nodes that compare equal would be solved.
 *
 * - Topologies with the same node partition are inserted into a list and
 *   tested for isomorphism. Only the first of the isomorphic adjacencies is
 *   retained. Because of the generation algorithm, this means that only the
 *   lexicographically greatest matrices remain.
 *   
 * The first step is quite precise, since in practice no more than twice too
 * many topologies were generated. The main efficiency loss occurs at the 
 * second step. However this is kept to a minimum by implementing the topology
 * list as an STL set. Some improvement in speed would also be possible by using
 * heuristics to generate less disconnected topologies.
 *
 */

class TopologyGenerator
{
public:

  /// the meaning of the options is defined by the Topology class
  enum Option
  {
    AllowDisconnected      =  1,
    OneParticleIrreducible =  2,
    NoLoops                =  4,
    NoTadpoles             =  8,
    NoSelfEnergies         = 16,
    OnShell                = 32
  };
  
public:

  /// generates only connected topologies with triple and quadruple vertices
  TopologyGenerator(int n_external_edges,
		    int loop_order,
		    int n_degree_2_nodes = 0);

  /// node counts by degree, e.g. node_count[0] - number of nodes of degree 1
  explicit TopologyGenerator(const vector<int>& node_count);

  void
  enable(Option opt);

  void
  disable(Option opt);

  bool
  next_topology();

  Topology
  current_topology();

private:
  
  // these operations make no sense
  TopologyGenerator();
  TopologyGenerator(const TopologyGenerator&);
  TopologyGenerator& operator=(const TopologyGenerator&);

private:

  bool
  make_topologies();

  /// connects all nodes, if unsuccessful calls next_adjacency()
  void
  first_adjacency();

  /// generates the lexicographically next adjacency matrix
  bool
  next_adjacency();
    
  bool
  first_connection(int node);

  bool
  next_connection(int node);

  void
  connect(int node, int first_node);

  bool
  is_valid(int node) const;

  int
  compare(int parent_node, int child_node) const;

private:

  bool                          _fixed_node_count;
  
  vector<int>                   _node_count;
  
  int                           _options;

  int                           _n_nodes;
  
  set<Topology>                 _topologies;

  set<Topology>::const_iterator _current_topology;

  /**
   *
   * If _sort[i][j] == true, then _adjacency[i][j] <= _adjacency[i][j-1]. At the
   * beginning, _sort partitions nodes into cells according to their degree. 
   * These cells are divided by successive connections.
   *
   */

  vector<vector<bool> >         _sort;

  /**
   *
   * If _compare[i][j] == true, then node "i" should'nt be lexicographically
   * greater than node "j" (see is_valid()). In the present implementation, a
   * node is compared only to the node with the smallest index.
   *
   */

  vector<vector<bool> >         _compare;

  /// _unassigned[i][j] (i >= j) is the remaining adjacency between i and j
  vector<vector<int> >          _unassigned;

  /// _adjacency[i][j] (i >= j) is the adjacency between nodes i and j
  vector<vector<int> >          _adjacency;

};

/******************************************************************************
 *                                                                            *
 * Inlines of TopologyGenerator                                               *
 *                                                                            *
 ******************************************************************************/

inline
TopologyGenerator::TopologyGenerator(int n_external_edges,
				     int loop_order,
				     int n_degree_2_nodes) :
  _fixed_node_count(false),
  _node_count(4),
  _options(0)
{
  _node_count[0] = n_external_edges;
  _node_count[1] = n_degree_2_nodes;
  _node_count[2] = n_external_edges+2*(loop_order-1);
}

inline
TopologyGenerator::TopologyGenerator(const vector<int>& node_count) :
  _fixed_node_count(true),
  _node_count(node_count),
  _options(0) 
{}

inline
void
TopologyGenerator::enable(Option opt)
{
  // if the user specified the number of loops and legs, only connected
  // topologies should be generated.
  
  if (_fixed_node_count || opt != AllowDisconnected) _options |= opt;

  _topologies.clear();
}

inline
void
TopologyGenerator::disable(Option opt)
{
  _options &= ~opt;

  _topologies.clear();
}

/**
 *
 * If there are no topologies consistent with the current settings than a
 * topology on zero nodes is returned. The user should better call
 * next_topology() at first since this would return false in such a case.
 *
 */

inline
Topology
TopologyGenerator::current_topology()
{
  if (_topologies.empty() && !next_topology()) return Topology(0);

  return *_current_topology;
}

#endif
