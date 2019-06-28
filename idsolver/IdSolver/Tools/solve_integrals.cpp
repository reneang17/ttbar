/******************************************************************************
 *                                                                            *
 * Copyright (C) 2006 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include <signal.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <limits.h>
//#include <values.h>

#include "IdSolver.hpp"

/******************************************************************************
 *                                                                            *
 * usage                                                                      *
 *                                                                            *
 ******************************************************************************/

const char* usage = " [-s prototype] [-w nints] integrals output symbols\n\n\
       Generates fill statements in FORM format for all of the integrals. The\n\
       third argument is a list of symbols that have to be specified in order\n\
       for fermat to work correctly. They may be given values by appending an\n\
       equality sign with the desired value, e.g. ep=1/5.\n\n\
       With option -s, all identities will be stripped to only contain the\n\
       specified prototype.\n\n\
       Previously generated identity databases have to be provided in the\n\
       current directory and the resulting output will be stored in new\n\
       databases for future use. The calculation can be safely interrupted with\n\
       SIGTERM. SIGUSR1 and SIGXPU are ignored.\n\n\
       The status of the calculation is automatically written to databases if\n\
       more than 5*10^4 integrals are stored in memory. This number can be\n\
       changed with the -w option.\n";

/******************************************************************************
 *                                                                            *
 * globals                                                                    *
 *                                                                            *
 ******************************************************************************/

bool stop = false;

IntegralMap integrals;
IdentityGenerator identities(integrals);

map<string, bool> identifiers;
vector<pair<string, string> > rules;
string identifier;

int threshold = 50000;

void solve_identity(Integral&, int = INT_MAX);

/******************************************************************************
 *                                                                            *
 * signal_handler                                                             *
 *                                                                            *
 ******************************************************************************/

void
signal_handler(int signum)
{
  stop = true;
}

/******************************************************************************
 *                                                                            *
 * vm_size                                                                    *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Gives the virtual memory size in use in bytes by using the /proc file system.
 *
 */

unsigned long long int
vm_size()
{
  unsigned long long int size = 0ULL;

  ostringstream stat_name;
  stat_name << "/proc/" << getpid() << "/stat";
  ifstream stat_file(stat_name.str().c_str());
  if (!stat_file) return size;

  // read everything up to the name, which might contain whitespace
  // characters, but is put inside parentheses

  string token;
  while (stat_file)
    {
      stat_file >> token;
      if (token.find(')') != string::npos) break;
    }

  // count 20 data tokens, which are irrelevant

  for (int i = 0; i < 20; ++i)
    stat_file >> token;

  // according to the standard, that's where the virtual memory size
  // should be given in bytes

  stat_file >> size;

  return size;
}

/******************************************************************************
 *                                                                            *
 * solve_integral                                                             *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Solves an integral recursively until it is reduced to masters.
 *
 */

void
solve_integral(Integral& i)
{
  solve_identity(i);
  if (stop) return;
  
  // we cannot rely on the return value of simplify_value to check whether there
  // has been simplification, since it does not work past equivalence relations

  vector<Integral> prev_ints;
  for (;;)
    {
      vector<Integral> ints = i.value().integrals();
      if (prev_ints == ints) break;
      prev_ints = ints;
      
      for (vector<Integral>::iterator j = ints.begin(); j != ints.end(); ++j)
        {
 	  solve_integral(*j);
          if (stop) return;
        }
      
      i.simplify_value();
    }
}

/******************************************************************************
 *                                                                            *
 * solve_identity                                                             *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Solves stored identities for a given integral and all its children (integrals
 * occuring in the identities) whose identities have been seen before the one
 * for the given integral. At the end, the integral is not yet solved, since its
 * reduction might contain integrals which are solved by identities that only
 * come afterwards.
 *
 */

void
solve_identity(Integral& i, int index)
{
  if (stop) return;

  if (integrals.n_integrals() > threshold)
    {
      const int before = integrals.n_integrals();
      integrals.write();
      const int after = integrals.n_integrals();

      if (after != before)
	{
	  cout << "Wrote " << before-after << "\n";
	  cout.flush();
	}
    }
  
  // if the integral is assigned then the identity must have already been solved

  if (i.assigned()) return;

  // a database is only tried once to save time

  map<string, bool>::iterator database_status= identifiers.find(i.identifier());
  if (database_status == identifiers.end())
    {
      bool database_available = true;

      struct stat buf;
      if (stat(("id"+i.identifier()+".dat").c_str(), &buf) < 0)
	database_available = false;

      identifiers.insert(make_pair(i.identifier(), database_available));

      if (!database_available) return;
    }
  else if (!database_status->second)
    return;

  // we only take into account identities which came before the specified
  // index.

  pair<Expression, int> id = identities.read_identity(i);
  if (!id.first.defined() || id.second >= index) return;

  // a little hack to take into account identities which are 0 in the database.
  // this happens, if the original identity is "<some integral> * (1)", because
  // of the equivalence relation system.

  if (id.first.null())
    {
      i.assign(0);
      return;
    }

  Expression identity(0);

  if (!identifier.empty())
    {
      vector<pair<Integral, Coefficient> > terms = id.first.terms();
      
      for (vector<pair<Integral, Coefficient> >:: iterator t = terms.begin();
	   t != terms.end(); ++t)
	if (t->first.identifier() == identifier)
	  identity.add(t->first, t->second);
    }
  else
    identity = id.first;

  identity.replace(rules);

  // we cannot rely on the return value of simplify() to check whether there has
  // been simplification, since it does not work past equivalence relations
  
  vector<Integral> prev_ints;
  for (;;)
    {
      vector<Integral> ints = identity.integrals();
      if (prev_ints == ints) break;
      prev_ints = ints;
      
      for (vector<Integral>::iterator j= ints.begin(); j != ints.end(); ++j)
	{
	  solve_identity(*j, id.second);
	  if (stop) return;
	}
      
      identity.simplify();
    }

  // since the system is solved by homomorphism into the rational number field
  // it might happen that the solution is incorrect.

  Integral solved = integrals.update(identity);
  if (i != solved)
    {
      cerr << "solve_identity: error in the identity system for integral\n\n"
	   << i << "\n\n"
	   << "the solution points to\n\n";
      if (solved.defined()) cerr << solved << "\n\n";
      else cerr << "nothing" << "\n\n";
      cerr << "the identity after simplification is\n\n"
	   << identity << "\n";

      integrals.write();
      integrals.sync_databases();

      exit(1);
    }
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

  vector<char*> args;

  for (int i = 1; i < argc; ++i)
    if (argv[i][0] == '-')
      {
	switch (argv[i][1])
	  {
	  case 's':
	    if (++i == argc)
	      {
		cerr << "Option -s requires an argument" << endl;
		return 1;
	      }
	    identifier = argv[i];
	    break;
	  case 'w':
	    if (++i == argc)
	      {
		cerr << "Option -w requires an argument" << endl;
		return 1;
	      }
	    threshold = atoi(argv[i]);
	    break;
	  default:
	    cerr << "Unknown option " << argv[i] << endl;
	    return 1;
	  }
      }
    else
      args.push_back(argv[i]);

  if (args.size() < 2)
    {          
      cout << "usage: " << argv[0] << usage;
      return 0;
    }

  ifstream input(args[0]);
  ofstream output(args[1]);

  FermatInterface ferm;
  Coefficient::CAS = &ferm;
  for (int i = 2; i < args.size(); ++i)
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

  string buffer;
  while (getline(input, buffer))
    {
      {
	Integral i = integrals.integral(buffer);
	
	solve_integral(i);

	if (stop) break;
	
	if (!i.assigned())
	  cout << buffer << " not found\n";
	else
	  {
	    cout << i << endl;
	    output << "fill " << buffer << " =\n\n"
		   << i.value() << "\n;\n\n";
	    output.flush();
	  }
      }
    }
  
  integrals.write();
}
