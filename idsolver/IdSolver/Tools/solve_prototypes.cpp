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

const char* usage = " [-cnpsv] prototypes [d n [symbols] ]\n\n\
       Generates the system of files corresponding to the prototypes and, if\n\
       d and n are specified, solves the integrals within the [d,n] bounds on\n\
       the sums of the denominator (d) and numerator (n) powers. The user has\n\
       to create the userdecls, userkinematics and useroutput files with\n\
       appropriate content.\n\n\
       The prototypes file may have empty lines and comment lines starting\n\
       with #, its format is illustrated by the example:\n\n\
       n 6     # number of nodes\n\
       e 0 1 x # edge from node 0 to node 1 with mass x\n\
       e 1 2 1\n\
       e 1 3 1\n\
       e 2 3 0\n\
       e 2 4 1\n\
       e 3 5 1\n\
       m +p3 0 # ingoing external momentum p3 on edge 0\n\
       m -p1 4 # outgoing external momentum p1 on edge 4\n\
       m -p2 5\n\n\
       External momentum assignement is optional.\n\n\
       If integrals are to be solved, the necessary symbols have to be\n\
       specified for fermat. They may be assigned arbitrary values by appending\n\
       an equality sign, e.g. ep=1/5.\n\n\
       The options are:\n\n\
       -c - create integral databases\n\n\
       -n - reduce to master integrals with irreducible numerators\n\n\
       -p - print postscript pictures for all the prototypes\n\n\
       -s - store identities\n\n\
       -v - verbose\n\n\
       The solution can be safely interrupted with SIGTERM, whereas SIGUSR1 and\n\
       SIGXCPU are ignored.\n";

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
 * read_prototypes                                                            *
 *                                                                            *
 * One by one, read prototypes from the input file. Load all information      *
 * about each of them into the Prototype* p object. Push all prototypes *p    *
 * into PrototypeMap prototypes. The latter is a container class for          *
 * prototypes.                                                                *
 *                                                                            *
 * This procedure creates all the administrative files like matchings.prc,    *
 * symmetries.prc, definition.                                                *
 *                                                                            *
 ******************************************************************************/

void
read_prototypes(istream& input, PrototypeMap& prototypes)
{
  cout << "Reading prototypes...\n\n"
       << "nr.\tname\n\n";

  int position = 0;
  int n_external_edges;
  Prototype* p = NULL ;
  

  while (input)
    {
      string buffer;
      getline(input, buffer);
      
      if (buffer[0] == '#' || erase_whitespace(buffer).empty()) continue;

      istringstream line(buffer);

      string identifier;
      line >> identifier;

      // identifier[0] below corresponds to the symbol in the first column of
      // the input file: n, e, m, etc.
      switch (identifier[0])
	{
	// read off the number of nodes
	case 'n':
	  {
	    if (p)
	      {
		prototypes.insert(*p);
		prototypes.init_iterator();
		do
		  {
		    NamedPrototype np = prototypes.current_prototype();
		    if (isomorphic(np, *p))
		      {
			cout << ++position << '\t' << np.name << '\n';
			break;
		      }
		  }
		while (prototypes.next_prototype());
		delete p;
	      }
	    
	    // create new Prototype object
	    int n;
	    line >> n;
	    p = new Prototype(n);
	  }
	  break;
        // insert the nodes to the Prototype object
	case 'e':
	  {
	    int n1, n2;
	    string m;
	    line >> n1 >> n2 >> m;
	    p->insert_edge(n1,n2,m);
	  }
	  break;
        // pass the information about external momenta to Prototype
	case 'm':
	  {
	    string m;
	    int e, d;
	    line >> m >> e;
	    switch (m[0])
	      {
	      case '+':
		d = +1;
		break;
	      case '-':
		d = -1;
		break;
	      default:
		cerr << "Unspecified direction in " << buffer << endl;
		exit(1);
	      }
		
	    p->assign_external_momentum(m.substr(1),e,d);
	  }
	  break;
	default:
	  cerr << "Unknown identifier: " << identifier;
	  exit(1);
        }
    }

  if (!p)
    {
      cerr << "No prototypes found" << endl;
      exit(1);
    }

  
 
  // push Prototype *p into PrototypeMap container prototypes
  prototypes.insert(*p);
  //cout << prototypes << endl;
  prototypes.init_iterator();


  do
    {
      NamedPrototype np = prototypes.current_prototype();
      if (isomorphic(np, *p))
	{
	  cout << ++position << '\t' << np.name << '\n';
	  break;
	}
    }
  while (prototypes.next_prototype());


  if (p->n_external_edges() == 3)
    prototypes.insert_generator(PrototypeMap::lorentz3p_generator);
  else if (p->n_external_edges() == 4)
    prototypes.insert_generator(PrototypeMap::lorentz4p_generator);

  delete p;

  prototypes.complete();
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

  IntegralMap integrals;
  PrototypeMap prototypes;

  vector<char*> args;

  for (int i = 1; i < argc; ++i)
    if (argv[i][0] == '-')
      {
	switch (argv[i][1])
	  {
	  case 'c':
	    prototypes.enable(PrototypeMap::CreateDatabases);
	    break;
	  case 'n':
	    integrals.disable(IntegralMap::SolveNumerators);
	    break;
	  case 'p':
	    prototypes.enable(PrototypeMap::Postscript);
	    break;
	  case 's':
	    prototypes.enable(PrototypeMap::StoreIdentities);
	    break;
	  case 'v':
	    prototypes.enable(PrototypeMap::Verbose);
	    break;
	  default:
	    cerr << "Unknown option " << argv[i] << endl;
	    return 1;
	  }
      }
    else
      args.push_back(argv[i]);

  ifstream input(args[0]);
  // all administrative files are created by the call to this procedure
  read_prototypes(input, prototypes);

  if (args.size() < 3) return 0;
  
  int sum_denominator_powers = atoi(args[1]);
  int sum_numerator_powers = atoi(args[2]);
  prototypes.denominator_symmetrization_order(sum_denominator_powers+1);

  FermatInterface ferm;
  Coefficient::CAS = &ferm;
  vector<pair<string, string> > rules;
  for (int i = 3; i < args.size(); ++i)
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
  prototypes.replacement_rules(rules);
  prototypes.solve(sum_denominator_powers, sum_numerator_powers, integrals);
}
