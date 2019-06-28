/******************************************************************************
 *                                                                            *
 * Copyright (C) 2006 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include "IdSolver.hpp"

vector<int> starting;

/******************************************************************************
 *                                                                            *
 * usage                                                                      *
 *                                                                            *
 ******************************************************************************/

const char* usage = " [-s startingpoint] nscalars ndeno d n\n\n\
       Generates the points for identity generation within [d,n] ranges. One\n\
       can specify a starting point that should be a list of powers separated\n\
       by spaces as in the IdSolverDump file, e.g. -s \'1 1 0\'.\n";

/******************************************************************************
 *                                                                            *
 * print                                                                      *
 *                                                                            *
 ******************************************************************************/

void
print(const vector<int>& powers)
{
  if (!starting.empty())
    {
      if (starting == powers)
	starting.clear();
      else
	return;
    }

  cout << "(";
  for (vector<int>::const_iterator p = powers.begin(); p != powers.end(); ++p)
    {
      if (p != powers.begin()) cout << ",";
      cout << *p;
    }
  cout << ")\n";
}

/******************************************************************************
 *                                                                            *
 * main                                                                       *
 *                                                                            *
 ******************************************************************************/

int
main(int argc, char* argv[])
{
  if (argc < 5)
    {
      cout << "usage: " << argv[0] << usage;
      return 0;
    }

  int shift = 0;
  if (argv[1][0] == '-')
    {
      shift = 2;
      
      switch(argv[1][1])
	{
	case 's':
	  {
	    istringstream input(argv[2]);
	    while (input)
	      {
		string pow;
		input >> pow;
		if (!pow.empty())
		  starting.push_back(atoi(pow.c_str()));
	      }
	  }
	  break;
	default:
	  cerr << "Unknown option " << argv[1] << endl;
	  return 1;
	  break;
	}
    }

  const int n_scalars = atoi(argv[shift+1]);
  const int n_denominators = atoi(argv[shift+2]);
  const int max_sum_denominator_powers = atoi(argv[shift+3]);
  int max_sum_numerator_powers = atoi(argv[shift+4]);

  if (n_denominators == n_scalars) max_sum_numerator_powers = 0;
    
  int max_bound = max_sum_denominator_powers+max_sum_numerator_powers;

  for (int bound = 0; bound <= max_bound; ++bound)
    {
      Partition sum(2, bound);

      do
	{
	  if (sum[0] > max_sum_denominator_powers ||
	      sum[1] > max_sum_numerator_powers) continue;

	  Partition denominator_powers(n_denominators, sum[0]);
	  
	  do
	    {
	      if (n_denominators != n_scalars)
		{
		  Partition numerator_powers(n_scalars-n_denominators, sum[1]);
		  
		  do
		    {
		      vector<int> powers(n_scalars);
		      for (int i = 0; i < n_scalars; ++i)
			if (i < n_denominators)
			  powers[i] = denominator_powers[i]+1;
			else
			  powers[i] = -numerator_powers[i-n_denominators];
		      
		      print(powers);
		    }
		  while (numerator_powers.next());
		}
	      else
		{
		  vector<int> powers(n_scalars);
		  for (int i = 0; i < n_scalars; ++i)
		    powers[i] = denominator_powers[i]+1;
		  
		  print(powers);
		}
	    }
	  while (denominator_powers.next());
	}
      while (sum.next());
    }
}
