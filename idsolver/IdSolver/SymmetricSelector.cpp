/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include "IdSolver.hpp"

/******************************************************************************
 *                                                                            *
 * constructor                                                                *
 *                                                                            *
 ******************************************************************************/

SymmetricSelector::SymmetricSelector(const NamedPrototype& p)
{
  const vector<vector<pair<int, int> > > group = p.edge_symmetry_group();
  if (group.size() == 1) return;

  vector<int> denominator;
  for (int i = 0, j = 0; i < p.n_edges(); ++i)
    if (!p.is_external_edge(i)) denominator.push_back(j++);
    else denominator.push_back(-1);

  for (vector<vector<pair<int, int> > >::const_iterator perm = ++group.begin();
       perm != group.end(); ++perm)
    {
      vector<int> denominator_perm;

      for (vector<pair<int, int> >::const_iterator e = perm->begin();
	   e != perm->end(); ++e)
	if (denominator[e->first] >= 0) 
	  denominator_perm.push_back(denominator[e->first]);

      _denominator_symmetry_group.push_back(denominator_perm);
    }
}

/******************************************************************************
 *                                                                            *
 * compatible                                                                 *
 *                                                                            *
 ******************************************************************************/

bool
SymmetricSelector::compatible(const vector<int>& powers)
{
  if (_denominator_symmetry_group.empty()) return true;

  if (powers.size() < _denominator_symmetry_group.front().size())
    {
      cerr << "SymmetricSelector::compatible: incompatible sizes" << endl;
      exit(1);
    }

  for (vector<vector<int> >::iterator perm= _denominator_symmetry_group.begin();
       perm != _denominator_symmetry_group.end(); ++perm)
    for (int i = 0; i < perm->size(); ++i)
      if (powers[i] > powers[(*perm)[i]]) return false;
      else if (powers[i] < powers[(*perm)[i]]) break;
  
  return true;
}
