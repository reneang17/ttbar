/******************************************************************************
 *                                                                            *
 * Copyright (C) 2002 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#ifndef FIELD_HPP
#define FIELD_HPP 1

#include <set>
#include <vector>
#include <string>

#ifdef DEBUG
#include "Debug.hpp"
#endif

using namespace std;

/******************************************************************************
 *                                                                            *
 * Field                                                                      *
 *                                                                            *
 ******************************************************************************/

struct Vertex;

/// QFT field

struct Field
{
  typedef const Field* pointer;

  /// currently supported field types

  enum type
    {
      Scalar,
      Ghost,
      Fermion,
      Vector,
    };
  
  static const int n_types = 4;

  static const int n_anticommuting_types = 2;

  static const type anticommuting_type[2];

  /// data members

  string                               _identifier;

  type                                 _type;

  string                               _mass;

  /// the same for particle and anti-particle
  string                               _name;

  bool                                 _particle;
  
  const Field*                         _coupled_field;

  /// external wave functions for in- and out-going fields (in this order)
  string                               _wave_function[2];
  
  /**
   *
   * The first index is the degree of the vertex, the second is the minimum
   * number of times the vertex contains the field (multiplicity), i.e. 
   * _vertices[d][m], are all vertices of degree d, which contain the field
   * at least m times.
   *
   */

  vector<vector<set<const Vertex*> > > _vertices;
};

#endif
