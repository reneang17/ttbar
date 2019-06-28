/******************************************************************************
 *                                                                            *
 * Copyright (C) 2006 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include "IdSolver.hpp"

/******************************************************************************
 *                                                                            *
 * usage                                                                      *
 *                                                                            *
 ******************************************************************************/

const char* usage = " prototype output\n\n\
       Prints stored identities for the specified prototype.\n";

/******************************************************************************
 *                                                                            *
 * main                                                                       *
 *                                                                            *
 ******************************************************************************/

int
main(int argc, char* argv[])
{
  if (argc != 3)
    {
      cout << "usage: " << argv[0] << usage;
      return 0;
    }

  ofstream output(argv[2]);

  IntegralMap integrals;
  IdentityGenerator identities(integrals);
  
  identities.print_database(output, argv[1]);
}
