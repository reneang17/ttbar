/******************************************************************************
 *                                                                            *
 * Copyright (C) 2002 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#ifndef DIAGRAM_GENERATOR_HPP
#define DIAGRAM_GENERATOR_HPP 1

#include <set>
#include <string>
#include <vector>
#include <utility>
#include "Model.hpp"
#include "Diagram.hpp"
#include "Topology.hpp"

#ifdef DEBUG
#include "Debug.hpp"
#endif

using namespace std;

/******************************************************************************
 *                                                                            *
 * DiagramGenerator                                                           *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The DiagramGenerator class provides a means of generating diagrams based on a
 * field list and a vertex list. Currently unsupported features are
 *
 * 1) Vacuum diagrams. At least one external field must be provided. Extending
 *    would only require a slight modification of the vertex assignement, since
 *    the first assignement should run over the whole vertex list.
 *
 * 2) Field mixing propagators. It is assumed that one field can only couple to
 *    a single other. The extension would have to be two-fold. First, after
 *    assigning a vertex the first field from the list should be assigned to the
 *    other end of every line. Then, in next_unassigned_field_permutation(), one
 *    would have to run through the full list. Second, and also the more
 *    difficult, the statistical factors for multiple edges should be
 *    reconsidered.
 *
 * 3) Majorana fermions. The implementation should not be difficult and the 
 *    code could accomodate the algorithm of A. Denner, H. Eck, O. Hahn and 
 *    J. Kublbeck published in Nucl. Phys. B387 (1992) 467-484.
 *
 * 4) Color factors.
 *
 * The Electroweak Standard Model is therefore fully supported. The QCD part
 * would only require the implementation of 4). Point 3) would be needed for
 * the MSSM and other supersymmetric theories and also for electroweak models
 * with Majorana neutrinos.
 *
 * The generation algorithm consists mainly of traversing the diagram starting
 * from a node connected to an external node. At every stage a list is 
 * constructed of vertices which are compatible with the current field 
 * assignements. The remaining fields of every vertex are assignend according
 * to sorting rules. The symmetry factor determination algorithm is the one of
 * P. Nogueira, J. Comp. Phys. 105 (1993) 279-289.
 *
 */

class DiagramGenerator
{
public:
  
  DiagramGenerator(const Topology&       t,
		   const Model&          model,
		   const vector<string>& in_fields,
		   const vector<string>& in_momenta,
		   const vector<string>& out_fields,
		   const vector<string>& out_momenta,
		   int counter_term_order = 0);

  bool
  next_diagram();

  Diagram
  current_diagram();
  
private:

  // these operations make no sense
  DiagramGenerator();
  DiagramGenerator(const DiagramGenerator&);
  DiagramGenerator& operator=(const DiagramGenerator&);

private:

  /****************************************************************************
   *                                                                          *
   * TraversalDescriptor                                                      *
   *                                                                          *
   ****************************************************************************/

  /**
   *
   * The TraversalDescriptor structure describes a node in the traversal tree of
   * the diagram.
   *
   */

  struct TraversalDescriptor
  {
    /**************************************************************************
     *                                                                        *
     * topological part                                                       *
     *                                                                        *
     **************************************************************************/
   
    int                                     _node;

    int                                     _degree;

    /**
     *
     * These are nodes of the other ends of the unassigned edges. They are used
     * to determine the action of the internal symmetry subgroup of the 
     * topology on the current diagram (see valid_diagram()).
     *
     */

    set<int>                                _nodes_to_visit;

    vector<int>                             _assigned_edges[2];

    vector<int>                             _unassigned_edges[2];

    /**
     *
     * Contains the indices of the unassigned fields which belong to the same
     * multiple edge and should therefore be sorted. For repeating fields the
     * statistical factor is evaluated.
     *
     */

    vector<vector<int> >                    _multiple_edges;

    /**
     *
     * Contains the indices of the unassigned fields which are the source fields
     * in lines of the (topological) loops. The index of the target field is
     * always the index of the source field plus one. The data is used first to
     * check whether both fields make a propagator, then to sort the different 
     * loops according to the source fields and in the end to determine the 
     * statistical factor.
     *
     */
  
    vector<int>                             _loops;

    /**************************************************************************
     *                                                                        *
     * temporary assignement part                                             *
     *                                                                        *
     **************************************************************************/
  
    /// the highest order of a counter term for this vertex
    int                                     _order;
  
    int                                     _symmetry_factor;

    vector<Field::pointer>                  _assigned_fields;

    vector<Field::pointer>                  _unassigned_fields;

    vector<Vertex::pointer>                 _compatible_vertices;

    vector<Vertex::pointer>::const_iterator _current_compatible_vertex;
  };

  typedef vector<TraversalDescriptor>::iterator descriptor_pointer;

  void
  assign_external_fields();

  void
  assign_internal_fields(descriptor_pointer desc);

  void
  init_unassigned_fields(descriptor_pointer desc);

  bool
  next_unassigned_fields_permutation(descriptor_pointer desc);

  bool
  init_vertex(descriptor_pointer desc);

  bool
  next_vertex(descriptor_pointer desc);

  bool
  valid_vertex(descriptor_pointer desc);

  bool
  next_diagram(descriptor_pointer desc);

  bool
  valid_diagram();

private:

  bool                           _initialized;

  vector<Field::pointer>         _ext_fields[2];

  vector<string>                 _ext_momenta[2];

  vector<vector<int> >           _symmetry_group;

  vector<vector<int> >           _ext_node_permutations;

  vector<vector<int> >::iterator _current_ext_node_permutation;
  
  Diagram                        _diag;

  vector<TraversalDescriptor>    _traversal_desc;
};

/******************************************************************************
 *                                                                            *
 * Inlines of the DiagramGenerator class                                      *
 *                                                                            *
 ******************************************************************************/

inline
Diagram
DiagramGenerator::current_diagram()
{
  if (!_initialized && !next_diagram()) return Diagram(Topology(0));
  
  return _diag;
}

inline
bool
DiagramGenerator::next_diagram()
{
  return next_diagram(_traversal_desc.end());
}

#endif
