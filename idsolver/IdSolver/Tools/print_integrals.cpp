/******************************************************************************
 *                                                                            *
 * Copyright (C) 2006 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include <climits>
#include "IdSolver.hpp"

/******************************************************************************
 *                                                                            *
 * usage                                                                      *
 *                                                                            *
 ******************************************************************************/

const char* usage = " prototype output [d n]\n\n\
       Generates fill statements in FORM format for all of the integrals of the\n\
       given prototype.\n\n\
       d - sum of denominator powers\n\
       n - sum of numerator powers\n\n\
       if d and n are given, then only those integrals are written whose\n\
       reduction does only contain integrals which denominator and numerator\n\
       powers fall into the [d,n] range.\n";

/******************************************************************************
 *                                                                            *
 * main                                                                       *
 *                                                                            *
 ******************************************************************************/

int
main(int argc, char* argv[])
{
  if (argc != 3 && argc != 5)
    {
      cout << "usage: " << argv[0] << usage;
      return 0;
    }

  ofstream output(argv[2]);

  IntegralMap integrals;

  if (argc == 3)
    integrals.print_database(output, argv[1]);
  else
    integrals.print_database(output, atoi(argv[3]), atoi(argv[4]), argv[1]);

  cout << "masters:\n\n";
  if (argc == 3)
    integrals.print_masters(cout, INT_MAX, INT_MAX);
  else
    integrals.print_masters(cout, atoi(argv[3]), atoi(argv[4]));
}
