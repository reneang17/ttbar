/******************************************************************************
 *                                                                            *
 * Copyright (C) 2006 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include <algorithm>

#include "IdSolver.hpp"

/******************************************************************************
 *                                                                            *
 * usage                                                                      *
 *                                                                            *
 ******************************************************************************/

const char* usage = " [-f] integrals [mind [minn] ]\n\n\
       Takes a list of integrals, sorts it and determines the maximal sums of\n\
       powers of denominators and numerators for each prototype and its\n\
       children. The optional numbers mind and minn are the minimum sums of\n\
       powers for the denominators and numerators respectively. The output\n\
       is a list made of prototype name, number of scalars, number of\n\
       denominators, sum of denominator powers and sum of numerator powers.\n\
       With option -f full statistics are printed.\n";

/******************************************************************************
 *                                                                            *
 * structures and globals                                                     *
 *                                                                            *
 ******************************************************************************/

struct PrototypeEntry 
{
  int            n_denominators;
  int            sum_denominator_powers;
  int            sum_numerator_powers;
  vector<string> children_prototypes;
};
  
map<string, PrototypeEntry> prototype_entries;

/******************************************************************************
 *                                                                            *
 * prototype_entry                                                            *
 *                                                                            *
 ******************************************************************************/

PrototypeEntry&
prototype_entry(const string& prototype)
{
  map<string, PrototypeEntry>::iterator p = prototype_entries.find(prototype);
  if (p != prototype_entries.end()) return p->second;

  PrototypeEntry e;

  // read the definition file to determine the number of denominators, by
  // counting the number of D symbols (for DS)

  ifstream definition((prototype+"definition").c_str());

  string line, buffer;
  while (getline(definition, buffer))
    if (!buffer.empty()) line = buffer;
  e.n_denominators = count(line.begin(), line.end(), 'D');

  // set the sums
  
  e.sum_denominator_powers = -1;
  e.sum_numerator_powers = -1;

  // read the matchings file to determine the children
  
  ifstream matchings((prototype+"matchings").c_str());
  
  while (getline(matchings, buffer))
    {
      // assumes standardized matchings files as produced by IdSolver
      // where every line is of the form 
      //
      // #call PR0matching
      
      string child(buffer, 6, buffer.size()-14);
      if (child == prototype) continue;
      prototype_entry(child);
      e.children_prototypes.push_back(child);
    }
  
  prototype_entries[prototype] = e;

  return prototype_entries[prototype];
}

/******************************************************************************
 *                                                                            *
 * main                                                                       *
 *                                                                            *
 ******************************************************************************/

int
main(int argc, char* argv[])
{
  if (argc < 2)
    {
      cout << "usage: " << argv[0] << usage;
      return 0;
    }

  int shift = 0;
  if (argv[1][0] == '-')
    {
      shift = 1;

      switch(argv[1][1])
	{
	case 'f':
	  break;
	default:
	  cerr << "Unknown option " << argv[1] << endl;
	  return 1;
	  break;
	}
    }
  
  ifstream input(argv[shift+1]);
  
  int min_deno = 0;
  if (argc-shift == 3 || argc-shift == 4) min_deno = atoi(argv[shift+2]);
  int min_num = 0;
  if (argc-shift == 4) min_num = atoi(argv[shift+3]);

  int n_scalars = -1;
  IntegralMap integrals(".tmp");

  string buffer;
  while (getline(input, buffer))
    {
      Integral i = integrals.integral(buffer);
      if (n_scalars < 0) n_scalars = i.powers().size();
      const int sum_denominator_powers = i.sum_denominator_powers();
      const int sum_numerator_powers = i.sum_numerator_powers();
      
      PrototypeEntry& e = prototype_entry(i.identifier());
      
      // this gives correct n_denominators even if there are no definition files
      
      e.n_denominators = i.n_denominators();

      if (e.sum_denominator_powers < sum_denominator_powers)
	e.sum_denominator_powers = sum_denominator_powers;
      if (e.sum_numerator_powers < sum_numerator_powers)
	e.sum_numerator_powers = sum_numerator_powers;
    }

  multimap<int, string> sorted_prototypes;
  for (map<string, PrototypeEntry>::iterator p = prototype_entries.begin();
       p != prototype_entries.end(); ++p)
    {
      const int key = (p->second.n_denominators<<16)+p->first.size();
      sorted_prototypes.insert(make_pair(key, p->first));
    }

  if (shift)
    {
      cout << "Prototypes with numbers of scalars, denominators and solution ranges\n\n";
      for (multimap<int, string>::iterator p = sorted_prototypes.begin();
	   p != sorted_prototypes.end(); ++p)
	if (prototype_entries[p->second].sum_denominator_powers >= 0)
	  {
	    cout << p->second << " " << n_scalars << " "
		 << prototype_entries[p->second].n_denominators << " "
		 << prototype_entries[p->second].sum_denominator_powers << " "
		 << prototype_entries[p->second].sum_numerator_powers << endl;
	  }
      cout << endl;
    }

  for (multimap<int, string>::reverse_iterator p = sorted_prototypes.rbegin();
       p != sorted_prototypes.rend(); ++p)
    for (vector<string>::iterator child =
	   prototype_entries[p->second].children_prototypes.begin();
	 child != prototype_entries[p->second].children_prototypes.end();
	 ++child)
      {
	if (prototype_entries[p->second].sum_denominator_powers >
	    prototype_entries[*child].sum_denominator_powers)
	  prototype_entries[*child].sum_denominator_powers =
	    prototype_entries[p->second].sum_denominator_powers;
	if (prototype_entries[p->second].sum_numerator_powers >
	    prototype_entries[*child].sum_numerator_powers)
	  prototype_entries[*child].sum_numerator_powers =
	    prototype_entries[p->second].sum_numerator_powers;
      }

  if (shift)
    {
      cout << "Prototypes with numbers of denominators and solution ranges (updated)\n\n";
      for (multimap<int, string>::iterator p = sorted_prototypes.begin();
	   p != sorted_prototypes.end(); ++p)
	{
	  cout << p->second << " " << n_scalars << " " 
	       << prototype_entries[p->second].n_denominators << " "
	       << prototype_entries[p->second].sum_denominator_powers << " "
	       << prototype_entries[p->second].sum_numerator_powers << endl;
	}
      cout << endl;
    }
  
  if (shift)
    cout << "Prototypes with numbers of denominators and solution ranges (updated & shifted)\n\n";
  for (multimap<int, string>::iterator p = sorted_prototypes.begin();
       p != sorted_prototypes.end(); ++p)
    {
      int sum_denominator_powers = 
	prototype_entries[p->second].sum_denominator_powers;
      if (sum_denominator_powers < min_deno) sum_denominator_powers = min_deno;

      int sum_numerator_powers =
	prototype_entries[p->second].sum_numerator_powers;
      if (sum_numerator_powers < min_num) sum_numerator_powers = min_num;


      cout << p->second << " " << n_scalars << " "
	   << prototype_entries[p->second].n_denominators << " "
	   << sum_denominator_powers << " " << sum_numerator_powers << endl;
    }
}
