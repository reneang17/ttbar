/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include "Utilities.hpp"

/******************************************************************************
 *                                                                            *
 * erase_characters                                                           *
 *                                                                            *
 ******************************************************************************/

string
erase_characters(const string& original, const char* characters)
{
  string cleaned;
  int begin, end = 0;

  while ((begin = original.find_first_not_of(characters, end)) != string::npos
	 && (end = original.find_first_of(characters, begin)))
    {
      if (end != string::npos)
	cleaned.append(original, begin, end-begin);
      else
	cleaned.append(original, begin, string::npos);
    }

  return cleaned;
}

/******************************************************************************
 *                                                                            *
 * solve_equations                                                            *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * solution of a linear equation system with coefficients -1,0,+1. n is the
 * number of unknowns.
 *
 */

int
solve_equations(vector<vector<int> >& equations, int n)
{
  for (int i = 0; i < n; ++i)
    {
      // find the pivot

      if (!equations[i][i])
	{
	  int j = i;
	  while (j < equations.size()-1 && !equations[++j][i]) {};
 	  if (j == equations.size()-1 && !equations[j][i])
	    return i;
	  else
	    swap(equations[i], equations[j]);
	}

      // normalize the element to one (we assume that the rescaling can
      // only amount to a change of sign)
      
      if (equations[i][i] == -1)
	for (int j = i; j < equations[i].size(); ++j)
	  equations[i][j] = -equations[i][j];

      // eliminate nonvanishing elements in column i

      for (int j = 0; j < equations.size(); ++j)
	if (j != i && equations[j][i])
	  {
	    switch (equations[j][i])
	      {
	      case 1:
		for (int k = i; k < equations[i].size(); ++k)
		  equations[j][k] -= equations[i][k];
		break;
	      case -1:
		for (int k = i; k < equations[i].size(); ++k)
		  equations[j][k] += equations[i][k];
		break;
	      }
	  }
    }

  return n;
}
