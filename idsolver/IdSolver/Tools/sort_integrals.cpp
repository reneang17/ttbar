/******************************************************************************
 *                                                                            *
 * Copyright (C) 2008 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include "IdSolver.hpp"

/******************************************************************************
 *                                                                            *
 * usage                                                                      *
 *                                                                            *
 ******************************************************************************/

const char* usage = " integrals \n\n\
       Takes a list of integrals, sorts it and prints it on standard output.\n";

/******************************************************************************
 *                                                                            *
 * Comparison class                                                           *
 *                                                                            *
 ******************************************************************************/

struct IntegralCompare
{
  bool
  operator()(const Integral i1, const Integral i2)
  {
    return i1.less_than(i2);
  }
};

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
	default:
	  cerr << "Unknown option " << argv[1] << endl;
	  return 1;
	  break;
	}
    }
  
  ifstream input(argv[shift+1]);
  
  IntegralMap integrals(".tmp");
  set<Integral, IntegralCompare> sorted_integrals;

  string buffer;
  while (getline(input, buffer))
    {
      Integral i = integrals.integral(buffer);
      sorted_integrals.insert(i);
    }
 
  for (set<Integral, IntegralCompare>::iterator i = sorted_integrals.begin();
       i != sorted_integrals.end(); ++i)
  {
    cout << *i << endl;
  }
}
      
