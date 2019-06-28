/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include "IdSolver.hpp"

/******************************************************************************
 *                                                                            *
 * static data members                                                        *
 *                                                                            *
 ******************************************************************************/

CASInterface* Coefficient::CAS;

/******************************************************************************
 *                                                                            *
 * replace                                                                    *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Apply a set of rules to the coefficient. The rules are given as pairs of
 * (variable, value) and are applied in the order in which they are given.
 *
 */

void
Coefficient::replace(const vector<pair<string, string> >& rules)
{
#ifndef GMP
  for (vector<pair<string, string> >::const_iterator rule = rules.begin();
       rule != rules.end(); ++rule)
    {
      string replaced;
      int prev = 0, next;
      int length = rule->first.size();

      while ((next = _string.find(rule->first, prev)) != string::npos)
	{
	  replaced.append(_string, prev, next-prev);
	  prev = next+length;

	  if ((next == 0 || !isalnum(_string[next-1])) &&
	      (prev >= _string.size() || !isalnum(_string[prev])))
	    replaced.append("("+rule->second+")");
	  else
	    replaced.append(_string, next, prev-next);
	}
      replaced.append(_string, prev, string::npos);

      _string = replaced;
    }

  _string = CAS->normal(_string);
#endif
}

/******************************************************************************
 *                                                                            *
 * write                                                                      *
 *                                                                            *
 ******************************************************************************/

int
Coefficient::write(ResizableBuffer& buffer) const
{
#ifndef GMP
  const int coeff_size = _string.size();
  if (coeff_size > buffer.free()) buffer.reserve(coeff_size);
  _string.copy(buffer._end_of_data, coeff_size);
  buffer._end_of_data += coeff_size;
  return coeff_size;
#else
  cerr << "Coefficient::write: no support form gmp data writes" << endl;
  exit(1);
#endif
}
