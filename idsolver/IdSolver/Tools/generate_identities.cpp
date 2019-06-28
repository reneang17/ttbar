/******************************************************************************
 *                                                                            *
 * Copyright (C) 2006 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include <unistd.h>
#include <signal.h>
#include <limits.h>
//#include <values.h>

#include "IdSolver.hpp"

/******************************************************************************
 *                                                                            *
 * usage                                                                      *
 *                                                                            *
 ******************************************************************************/

const char* usage = " [-aensv] [-c firstid] [-d slot] [-f prototypes | \n\
       prototype nscalars ndeno d n] symbols\n\n\
       Generates and stores identities for a given prototype, with ndeno being\n\
       the number of denominators and d and n the maximal sums of the powers of\n\
       denominators and numerators respectively.\n\n\
       Symbols have to be specified for fermat. They have to be given values by\n\
       appending an equality sign and a rational number, e.g. ep=1/5. The\n\
       number should be chosen in such a way, that vanishing coefficients are\n\
       uniquely identified. A rule of thumb is to use inverses of relatively\n\
       large primes.\n\n\
       The options are:\n\n\
       -a - instead of generating identities with sums of powers of\n\
            denominators and numerators running from 0 to d and n respectively,\n\
            the sums of powers are fixed at d and n. this option implies -e.\n\n\
       -c - start the identity counter at firstid. this option is overridden by\n\
            the presence of an IdSolverDump file and mutually exclusive with\n\
            option -d.\n\n\
       -d - start the identity counter at slot*ndeno, where ndeno is the number\n\
            of denominators of the current prototype. this option is useful\n\
            in combination with option -f to make space for corrections.\n\n\
       -e - start the identity counter at the last identity number in the\n\
            database of the current prototype.\n\n\
       -f - use the solution specification from the prototypes file.\n\n\
       -n - reduce to master integrals with irreducible numerators.\n\n\
       -s - in combination with option -a, symmetries are generated instead of\n\
            identities.\n\n\
       -v - verbose.\n\n\
       The generation can be safely interrupted with SIGTERM, whereas SIGUSR1\n\
       and SIGXCPU are ignored.\n";

/******************************************************************************
 *                                                                            *
 * globals                                                                    *
 *                                                                            *
 ******************************************************************************/

bool append = false;
bool extend = false;
bool symmetrize = false;

int firstid = 0;
int slot = 0;
int start_n_identities = 0;

/**
 *
 * Hardcoded here, even though these are set in IdentityGenerator.cpp, because
 * they are static. Anyway, the loop in main also depends on the structure of
 * the entries in the identity database.
 *
 */

const char* setup_key = "setup";
const char* generated_key = "generated";

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
 * generate_identities                                                        *
 *                                                                            *
 ******************************************************************************/

void
generate_identities(const string& name,
		    int n_scalars,
		    int n_denominators,
		    int sum_denominator_powers,
		    int sum_numerator_powers,
		    IntegralMap& integrals,
		    IdentityGenerator& identities)
{
  identities.solved_identifier(name);

  if (start_n_identities != identities.n_identities()) start_n_identities = 0;

  if (start_n_identities == 0 && slot)
    {
      int shift = n_denominators*slot;
      identities.shift_n_identities(shift-identities.n_identities());
    }

  if (start_n_identities == 0 && extend)
    {
      int max  = INT_MIN;

      try
	{
	  DB db(("id"+name+".dat").c_str());
      
	  db.iterinit();

	  for (;;)
	    {
	      int key_size;
	      int8* key = db.iternext(&key_size);

	      if (strncmp(key, setup_key, key_size) &&
		  strncmp(key, generated_key, key_size))
		{
		  int identity_size;
		  int8* identity_data =
		    db.get(key, key_size, 0, -1, &identity_size);
		  int index =
		    *((int*) (identity_data+identity_size-sizeof(int)));
		  if (index > max) max = index;
		  free(identity_data);
		}

	      free(key);
	    }
	}
      catch (DATABASE_ERROR e)
	{
	  if (e.code() != DATABASE::EOPEN && e.code() != DATABASE::ENOITEM)
	    {
	      cerr << "id"+name+".dat" << " " << e << endl;
	      return;
	    }
	}

      if (max != INT_MIN)
	{
	  int shift = max-identities.n_identities();
	  identities.shift_n_identities(shift);
	}
    }

  cout << "Identity counter " << identities.n_identities() << endl;

  Timer prototype_time;
  
  cout << "Solving " << name << " "
       << n_denominators << " "
       << sum_denominator_powers << " "
       << sum_numerator_powers << endl;
  
  if (append)
    {
      if (symmetrize)
	{
	  cout << "Symmetrizing...\n";
	  identities.solve_fixed_sums(n_scalars,
				      n_denominators,
				      sum_denominator_powers,
				      sum_numerator_powers,
				      name+"symmetries");
	}
      else
	{
	  cout << "Generating identities...\n";
	  identities.solve_fixed_sums(n_scalars,
				      n_denominators,
				      sum_denominator_powers,
				      sum_numerator_powers,
				      name+"identities");
	}
    }
  else
    {
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
    }
      
  if (identities.dumped()) return;
  
  cout << "  " << identities.n_identities() << " identities\n"
       << "  ";
  prototype_time.print(cout);
  cout << " running time\n";

  integrals.write();
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
  IdentityGenerator identities(integrals);
  identities.enable(IdentityGenerator::StoreIdentities);
  start_n_identities = identities.n_identities();

  char* file_name = NULL;
  int symbols_begin = 5;

  vector<char*> args;

  for (int i = 1; i < argc; ++i)
    if (argv[i][0] == '-')
      {
	switch (argv[i][1])
	  {
	  case 'a':
	    append = true;
	    extend = true;
	    break;
	  case 'c':
	    if (++i == argc)
	      {
		cerr << "Option -c requires a number" << endl;
		return 1;
	      }
	    firstid = atoi(argv[i]);
	    break;
	  case 'd':
	    if (++i == argc)
	      {
		cerr << "Option -d requires a number" << endl;
		return 1;
	      }
	    slot = atoi(argv[i]);
	    break;
	  case 'e':
	    extend = true;
	    break;
	  case 'f':
	    if (++i == argc)
	      {
		cerr << "Option -f requires a file name" << endl;
		return 1;
	      }
	    file_name = argv[i];
	    symbols_begin = 0;
	    break;
	  case 'n':
	    integrals.disable(IntegralMap::SolveNumerators);
	    break;
	  case 's':
	    symmetrize = true;
	    break;
	  case 'v':
	    identities.enable(IdentityGenerator::Verbose);
	    break;
	  default:
	    cerr << "Unknown option " << argv[i] << endl;
	    return 1;
	  }
      }
    else
      args.push_back(argv[i]);

  if (firstid != 0 && slot != 0)
    {
      cerr << "Options -c and -d are mutually exclusive" << endl;
      return 1;
    }

  if (start_n_identities == 0 && firstid != 0)
    identities.shift_n_identities(firstid);

  // This block reads symbols (and, if given, corresponding values) 
  // for the Fermat program
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
      if (args.size() < 5)
	{
	  cerr << "Not enough arguments" << endl;
	  return 1;
	}

      string name = args[0];
      int n_scalars = atoi(args[1]);
      int n_denominators = atoi(args[2]);
      int sum_denominator_powers = atoi(args[3]);
      int sum_numerator_powers = atoi(args[4]);

      generate_identities(name,
			  n_scalars,
			  n_denominators,
			  sum_denominator_powers,
			  sum_numerator_powers,
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
      if (args.size() < 1)
	{
	  cerr << "Not enough arguments" << endl;
	  return 1;
	}

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
	  
	  generate_identities(name,
			      n_scalars,
			      n_denominators,
			      sum_denominator_powers,
			      sum_numerator_powers,
			      integrals,
			      identities);

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
