/******************************************************************************
 *                                                                            *
 * Copyright (C) 2002 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#ifndef VERTEX_HPP
#define VERTEX_HPP 1

#include <vector>
#include <string>

#ifdef DEBUG
#include "Debug.hpp"
#endif

using namespace std;

/******************************************************************************
 *                                                                            *
 * Vertex                                                                     *
 *                                                                            *
 ******************************************************************************/

struct Field;

/// QFT vertex

struct Vertex
{
  typedef const Vertex* pointer;

  /// currently supported vertex types depending on the lorentz structure

  enum type
    {
      Identity,
      VectorScalar,
      DerivativeVectorScalar,
      TripleVector,
      QuadrupleVector,
      FermionScalar,
      FermionVector,
      GhostVector,
      ScalarCT,
      FermionCT,
      VectorCT,
      VectorScalarCT
    };

  /**
   *
   * The determination of vertex types based on the vertex field content 
   * requires a map from a vector of field type multiplicities to the vertex 
   * type and number of values. The default is given in Model.cpp, but can
   * be overriden by the user. This however implies that at least
   * Diagram::print_vertex should be modified accordingly.
   *
   */

  static int n_types;

  static int* type_by_fields;

  /// data members

  type                 _type;

  int                  _order;

  vector<string>       _value;

  vector<const Field*> _original_fields;

  vector<const Field*> _sorted_fields;

  /// n! for every n equal fields
  int                  _symmetry_factor;
};

#endif
