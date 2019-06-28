/******************************************************************************
 *                                                                            *
 * Copyright (C) 2002 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#ifndef MODEL_HPP
#define MODEL_HPP

#include <map>
#include <string>
#include <vector>
#include <iostream>
#include "Field.hpp"
#include "Vertex.hpp"

#ifdef DEBUG
#include "Debug.hpp"
#endif

using namespace std;

/******************************************************************************
 *                                                                            *
 * Model                                                                      *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The Model class contains the structure of a QFT model. This structure is
 * described through the fields and vertices defined in terms of these fields.
 * There is no direct access to the vertices. They can only be accessed through
 * the fields. As far as diagrams with no vacuum components are concerned, this
 * is sufficient.
 *
 */

class Model
{
public:

  Model(const string& fields_file_name, const string& vertices_file_name);

  ~Model();

  Field::pointer
  find(const string& field_name) const;

private:

  // these operations should not be needed
  Model();
  Model(const Model&);
  Model& operator=(const Model&);

private:

  void
  read_fields(istream& input);

  void
  read_vertices(istream& input);

private:

  map<const string, Field*> _fields;

  vector<Vertex*>           _vertices;
};

/******************************************************************************
 *                                                                            *
 * Inlines of the Model class                                                 *
 *                                                                            *
 ******************************************************************************/

inline
Field::pointer
Model::find(const string& field_name) const
{
  map<const string, Field*>::const_iterator f = _fields.find(field_name);

  if (f != _fields.end())
    return f->second;
  else
    return 0;
}

#endif
