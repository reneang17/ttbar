/******************************************************************************
 *                                                                            *
 * Copyright (C) 2006 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include <unistd.h>
#include <signal.h>

#include "IdSolver.hpp"

/******************************************************************************
 *                                                                            *
 * usage                                                                      *
 *                                                                            *
 ******************************************************************************/

const char* usage = " [-n] [-f prototypes | prototype nscalars ndeno d n]\n\
       dm nm symbols\n\n\
       Generates and solves identities for a given prototype, and prints the\n\
       determined master integrals to stdout. The number of denominators is\n\
       ndeno, whereas d and n are the maximal sums of denominator and numerator\n\
       powers respectively. Alternatively, with the option -f the solution\n\
       parameters will be read from the prototypes file. The master integrals\n\
       are defined as unassigned integrals, whose sums of denominator and\n\
       numerator powers fall within the [dm,nm] range. The option -n results in\n\
       master integrals with irreducible numerators.\n\n\
       Symbols have to be specified for fermat. They have to be given values by\n\
       appending an equality sign and a rational number, e.g. ep=1/5. The number\n\
       should be chosen in such a way, that vanishing coefficients are uniquely\n\
       identified. A rule of thumb is to use inverses of relatively large\n\
       primes.\n\n\
       The generation can be safely interrupted with SIGTERM, whereas SIGUSR1\n\
       and SIGXCPU are ignored.\n";

/******************************************************************************
 *                                                                            *
 * signal_handler                                                             *
 *                                                                            *
 ******************************************************************************/

void
signal_handler(int signum)
{
  IdentityGenerator::dump = true;
}

/******************************************************************************
 *                                                                            *
 * determine_masters                                                          *
 *                                                                            *
 ******************************************************************************/

void
determine_masters(const string& name,
		  int n_scalars,
		  int n_denominators,
		  int sum_denominator_powers,
		  int sum_numerator_powers,
		  int maxdeno,
		  int maxnum,
		  IntegralMap& integrals,
		  IdentityGenerator& identities)
{
  identities.solved_identifier(name);

  Timer prototype_time;
  
  cout << "Solving " << name << " "
       << n_denominators << " "
       << sum_denominator_powers << " "
       << sum_numerator_powers << endl;
  
  cout << "Symmetrizing...\n";
  identities.solve_fixed_denominators(n_scalars,
				      n_denominators,
				      sum_denominator_powers+1,
				      0,
				      name+"symmetries");
  
  if (identities.dumped()) return;
  
  cout << "Generating identities...\n";
  identities.solve_fixed_denominators(n_scalars,
				      n_denominators,
				      sum_denominator_powers,
				      sum_numerator_powers,
				      name+"identities");
  
  if (identities.dumped()) return;
  
  cout << "  " << identities.n_identities() << " identities\n"
       << "  ";
  prototype_time.print(cout);
  cout << " running time\n\n";

  cout << "Masters:\n\n";
  integrals.print_masters(cout, maxdeno, maxnum, name);
}

/******************************************************************************
 *                                                                            *
 * main                                                                       *
 *                                                                            *
 ******************************************************************************/

int
main(int argc, char* argv[])
{
  signal(SIGTERM, signal_handler);
  signal(SIGUSR1, SIG_IGN);
  signal(SIGXCPU, SIG_IGN);

  if (argc == 1)
    {
      cout << "usage: " << argv[0] << usage;
      return 0;
    }

  IntegralMap integrals("inc.dat");

  char* file_name = NULL;
  int symbols_begin = 7;
  vector<char*> args;

  for (int i = 1; i < argc; ++i)
    if (argv[i][0] == '-')
      {
	switch (argv[i][1])
	  {
	  case 'n':
	    integrals.disable(IntegralMap::SolveNumerators);
	    break;
	  case 'f':
	    if (++i == argc)
	      {
		cerr << "Option -f requires a file name" << endl;
		return 1;
	      }
	    file_name = argv[i];
	    symbols_begin = 2;
	    break;
	  default:
	    cerr << "Unknown option " << argv[i] << endl;
	    return 1;
	  }
      }
    else
      args.push_back(argv[i]);

  IdentityGenerator identities(integrals);
  identities.enable(IdentityGenerator::Incomplete);

  FermatInterface ferm;
  Coefficient::CAS = &ferm;
  vector<pair<string, string> > rules;
  for (int i = symbols_begin; i < args.size(); ++i)
    {
      const string token(args[i]);
      const int split = token.find('=');

      string symbol(token, 0, split);
      symbol = erase_whitespace(symbol);
      ferm.symbol(symbol);

      if (split != string::npos)
	{
	  string value(token, split+1);
	  value = erase_whitespace(value);
	  rules.push_back(make_pair(symbol, value));
	}
    }
  
  identities.replacement_rules(rules);

  if (file_name == NULL)
    {
      if (args.size() < 7)
	{
	  cerr << "Not enough arguments" << endl;
	  return 1;
	}

      string name = args[0];
      int n_scalars = atoi(args[1]);
      int n_denominators = atoi(args[2]);
      int sum_denominator_powers = atoi(args[3]);
      int sum_numerator_powers = atoi(args[4]);
      int maxdeno = atoi(args[5]);
      int maxnum = atoi(args[6]);

      determine_masters(name,
			n_scalars,
			n_denominators,
			sum_denominator_powers,
			sum_numerator_powers,
			maxdeno,
			maxnum,
			integrals,
			identities);

      if (identities.dumped())
	{
	  cout << "Stopped with SIGTERM. Status dumped to IdSolverDump."
	       << endl;
	  return 0;
	}
    }
  else
    {
      if (args.size() < 2)
	{
	  cerr << "Not enough arguments" << endl;
	  return 1;
	}
      
      int maxdeno = atoi(args[0]);
      int maxnum = atoi(args[1]);

      ifstream solution_specification(file_name);

      Timer total_time;

      string buffer;
      while (getline(solution_specification, buffer))
	{
	  if (erase_whitespace(buffer).empty()) continue;

	  istringstream line(buffer);

	  string name;
	  int n_scalars;
	  int n_denominators;
	  int sum_denominator_powers;
	  int sum_numerator_powers;

	  line >> name 
	       >> n_scalars 
	       >> n_denominators 
	       >> sum_denominator_powers
	       >> sum_numerator_powers;
	  
	  determine_masters(name,
			    n_scalars,
			    n_denominators,
			    sum_denominator_powers,
			    sum_numerator_powers,
			    maxdeno,
			    maxnum,
			    integrals,
			    identities);
	  
	  cout << endl;

	  if (identities.dumped())
	    {
	      cout << "Stopped with SIGTERM. Status dumped to IdSolverDump."
		   << endl;
	      return 0;
	    }
	}

      total_time.print(cout);
      cout << " total running time\n";
    }

  unlink("IdSolverDump");
}
