/******************************************************************************
 *                                                                            *
 * Copyright (C) 2002 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include <fstream>
#include <utility>
#include <algorithm>
#include "Model.hpp"

/******************************************************************************
 *                                                                            *
 * static data members                                                        *
 *                                                                            *
 ******************************************************************************/

const Field::type Field::anticommuting_type[2] = {Ghost, Fermion};

/**
 *
 * default values for the vertex structures
 *
 * n_scalar, n_ghost, n_fermion, n_vector, type, n_values
 *
 */

static int types[] =
  {
    3, 0, 0, 0, Vertex::Identity, 1,
    4, 0, 0, 0, Vertex::Identity, 1,
    1, 2, 0, 0, Vertex::Identity, 1,
    1, 0, 2, 0, Vertex::FermionScalar, 2,
    1, 0, 0, 2, Vertex::VectorScalar, 1,
    2, 0, 0, 1, Vertex::DerivativeVectorScalar, 1,
    2, 0, 0, 2, Vertex::VectorScalar, 1,
    0, 0, 0, 3, Vertex::TripleVector, 1,
    0, 0, 0, 4, Vertex::QuadrupleVector, 3,
    0, 2, 0, 1, Vertex::GhostVector, 1,
    0, 0, 2, 1, Vertex::FermionVector, 2,
    2, 0, 0, 0, Vertex::ScalarCT, 2,
    0, 2, 0, 0, Vertex::ScalarCT, 2,
    0, 0, 2, 0, Vertex::FermionCT, 4,
    0, 0, 0, 2, Vertex::VectorCT, 2,
    1, 0, 0, 1, Vertex::VectorScalarCT, 1
  };

int Vertex::n_types = 16;
int* Vertex::type_by_fields = types;

/******************************************************************************
 *                                                                            *
 * constructor                                                                *
 *                                                                            *
 ******************************************************************************/

Model::Model(const string& fields_file_name, const string& vertices_file_name)
{
  ifstream fields_file(fields_file_name.c_str());
  if (!fields_file)
    {
      cerr << "The field list file \"" << fields_file_name
	   << "\" could not be opened\n";

      exit(1);
    }

  read_fields(fields_file);
  fields_file.close();

  ifstream vertices_file(vertices_file_name.c_str());
  if (!vertices_file)
    {
      cerr << "The vertex list file \"" << vertices_file_name
	   << "\" could not be opened\n";

      exit(1);
    }

  read_vertices(vertices_file);
  vertices_file.close();
}

/******************************************************************************
 *                                                                            *
 * destructor                                                                 *
 *                                                                            *
 ******************************************************************************/

Model::~Model()
{
  for (map<const string, Field*>::iterator f = _fields.begin();
       f != _fields.end(); ++f)
    {
      delete f->second;
    }
  
  for (vector<Vertex*>::iterator v = _vertices.begin();
       v != _vertices.end(); ++v)
    {
      delete *v;
    }
}

/******************************************************************************
 *                                                                            *
 * read_fields                                                                *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Reads the field data from a given input stream. Records are separated by
 * newlines. Empty lines and lines starting with a # symbol are neglected.
 * The format of a record is the following
 *
 * 1) particle name,
 *
 * 2) anti-particle name,
 *
 * 3) the name to be displayed when a diagram line has the field's propagator,
 *
 * 4) field type (currently allowed are Scalar, Vector, Fermion and Ghost),
 *
 * 5) field mass.
 *
 * Optional fields, 2 for self-conjugate fields 4 otherwise if filled denote
 * the external wave functions of the in- and out-going fields.
 *
 * Record's fields can be separated by spaces or tabs.
 *
 */

void
Model::read_fields(istream& input)
{
  const char delimiters[] ="\r\t ";

  while (input)
    {
      // every record different from a comment or empty line is parsed into
      // identifiers according to the delimiter list.
  
      string buffer;
      getline(input, buffer);

      int begin, end;
      if ((begin = buffer.find_first_not_of(delimiters)) < 0 ||
	  buffer[begin] == '#') continue;

      vector<string> identifier;
      do
	{
	  end = buffer.find_first_of(delimiters, begin);

	  int n_chars = end-begin;
	  if (end < 0) n_chars = end;

	  identifier.push_back(string(buffer, begin, n_chars));
	}
      while ((begin = buffer.find_first_not_of(delimiters, end)) >= 0);
      
      // fields after the 5th are optional

      if (identifier.size() < 5)
	{
	  cerr << "Incomplete field definition: ";
	  for (vector<string>::iterator id = identifier.begin();
	       id != identifier.end(); ++id)
	    {
	      cerr << *id << " ";
	    }
	  cerr << endl;
	  
	  exit(1);
	}
      
      if (find(identifier[0]) != 0 || find(identifier[1]) != 0)
	{
	  cerr << "The field " << identifier[0] << " or " << identifier[1]
	       << " has already been defined\n";

	  exit(1);
	}

      // The identification of the field type is base only on the first letter.
      // There is also no dependence on the case.
      
      Field::type type;
      switch (identifier[3][0])
	{
	case 's':
	case 'S':
	  type = Field::Scalar;
	  break;
	case 'f':
	case 'F':
	  type = Field::Fermion;
	  break;
	case 'v':
	case 'V':
	  type = Field::Vector;
	  break;
	case 'g':
	case 'G':
	  type = Field::Ghost;
	  break;
	default:
	  cerr << "Unknown field type: " << identifier[3] << endl;
	  exit(1);
	}

      // The insertion into the field map takes care of the possible identity
      // between the particle and the anti-particle.
      
      Field* particle = new Field;

      particle->_identifier = identifier[0];
      particle->_type = type;
      particle->_mass = identifier[4];
      particle->_name = identifier[2];
      particle->_particle = true;
      particle->_coupled_field = particle;

      if (identifier.size() >= 7)
	{
	  particle->_wave_function[0] = identifier[5];
	  particle->_wave_function[1] = identifier[6];
	}

      _fields.insert(make_pair(identifier[0], particle));

      if (identifier[0] != identifier[1])
	{
	  Field* anti_particle = new Field;

	  anti_particle->_identifier = identifier[1];
	  anti_particle->_type = type;
	  anti_particle->_mass = identifier[4];
	  anti_particle->_name = identifier[2];
	  anti_particle->_particle = false;
	  anti_particle->_coupled_field = particle;
	  particle->_coupled_field = anti_particle;

	  if (identifier.size() >= 9)
	    {
	      anti_particle->_wave_function[0] = identifier[7];
	      anti_particle->_wave_function[1] = identifier[8];
	    }
	  else if (identifier.size() == 7)
	    {
	      anti_particle->_wave_function[0] = identifier[5];
	      anti_particle->_wave_function[1] = identifier[6];
	    }

	  _fields.insert(make_pair(identifier[1], anti_particle));
	}
    }
}

/******************************************************************************
 *                                                                            *
 * read_vertices                                                              *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Reads the vertices from the input stream. every record has the following
 * format
 * 
 * 1) space or tab separated list of vertex' field names,
 *
 * 2) on the same line the counterterm order in parentheses,
 *
 * 3) starting on a new line, a list of values terminated by a semicolon
 *    according to the required number for the given vertex type.
 *
 * empty lines and lines starting with a # symbol are ignored.
 *
 */

void
Model::read_vertices(istream& input)
{
  // create the vertex type map

  map<vector<int>, pair<Vertex::type, int> > type_map;

  for (int i = 0; i < Vertex::n_types; ++i)
    {
      int t = Vertex::type_by_fields[(Field::n_types+2)*(i+1)-2];
      int n = Vertex::type_by_fields[(Field::n_types+2)*(i+1)-1];

      pair<Vertex::type,int> type_desc=make_pair(static_cast<Vertex::type>(t),n);

      vector<int> key;
      for (int j = 0; j < Field::n_types; ++j)
	key.push_back(Vertex::type_by_fields[i*(Field::n_types+2)+j]);

      type_map[key] = type_desc;
    }

  // read the vertices
	
  const char delimiters[] ="\r\t ";

  while (input)
    {
      Vertex* v = new Vertex;

      // read the first line of the record. it should contain the fields of
      // the vertex and the order of the vertex at the end (between parentheses)
      
      string buffer;
      getline(input, buffer);

      int begin, end;
      if ((begin = buffer.find_first_not_of(delimiters)) < 0 ||
	  buffer[begin] == '#') continue;
      
      vector<string> identifier;
      do
	{
	  end = buffer.find_first_of(delimiters, begin);

	  int n_chars = end-begin;
	  if (end < 0) n_chars = end;

	  identifier.push_back(string(buffer, begin, n_chars));
	}
      while ((begin = buffer.find_first_not_of(delimiters, end)) >= 0);

      // the identification of the vertex requires the key made of 
      // multiplicities of the different field types inside the vertex

      vector<int> key(Field::n_types);

      // the vertex degree (the last identifier is the vertex order)
      
      const int d = identifier.size()-1;

      // determine the vertex fields

      for (int i = 0; i < d; ++i)
	{
	  map<const string, Field*>::iterator f = _fields.find(identifier[i]);
	  
	  if (f == _fields.end())
	    {
	      cerr << "There is no field " << identifier[i]
		   << " in the field list\n";

	      exit(1);
	    }

	  ++key[f->second->_type];
	  v->_original_fields.push_back(f->second);
	  v->_sorted_fields.push_back(f->second);
	}
      
      sort(v->_sorted_fields.begin(), v->_sorted_fields.end());
      
      // determine the type of the vertex

      map<vector<int>, pair<Vertex::type,int> >::iterator t= type_map.find(key);
      if (t == type_map.end())
	{
	  cerr << "Unknown vertex type: ";
	  for (vector<string>::iterator id = identifier.begin();
	       id != identifier.end(); ++id)
	    {
	      cerr << *id << " ";
	    }
	  cerr << endl;
	  
	  exit(1);
	}
      
      v->_type = t->second.first;

      // determine the order of the vertex

      begin = identifier[d].find_first_not_of("(\t ");
      end = identifier[d].find_first_of(")\t ", begin);
      v->_order = atoi(string(identifier[d], begin, end-begin).c_str());

      // read the value of the vertex

      for (int i = 0; i < t->second.second; ++i)
	{
	  string value;
	  bool first_line = true;
	  
	  do
	    {
	      getline(input, buffer);
	      
	      if ((begin = buffer.find_first_not_of(delimiters)) < 0 ||
		  buffer[begin] == '#')
		{
		  end = -1;
		  continue;
		}
	      
	      end = buffer.find_first_of(";");
	      
	      int n_chars = end-begin;
	      if (end < 0) n_chars = end;
	      
	      if (first_line)
		first_line = false;
	      else
		value += "\n\t   ";

	      value.append(buffer, begin, n_chars);
	    }
	  while (end < 0);

	  v->_value.push_back(value);
	}
      
      // update the field list and determine the symmetry factor

      v->_symmetry_factor = 1;
      int current_symmetry_factor = 1;
      for (vector<Field::pointer>::iterator f = v->_sorted_fields.begin();
	   f != v->_sorted_fields.end(); ++f)
	{
	  if (f != v->_sorted_fields.begin() && *f == *(f-1))
	    {
	      v->_symmetry_factor *= ++current_symmetry_factor;
	      continue;
	    }
	  else
	    current_symmetry_factor = 1;
	    
	  Field* field = const_cast<Field*>(*f);
	  int m= count(v->_sorted_fields.begin(),v->_sorted_fields.end(),field);
	  
	  if (field->_vertices.size() <= d) field->_vertices.resize(d+1);
	  if (field->_vertices[d].size() <= m) field->_vertices[d].resize(m+1);

	  for (int k = 1; k <= m; ++k) field->_vertices[d][k].insert(v);
	}
      
      // update the vertex list

      _vertices.push_back(v);
    }
}
