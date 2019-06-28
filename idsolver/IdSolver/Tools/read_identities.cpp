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

const char* usage = " [-n] prototype begin end firstid symbols\n\n\
       Reads in identity files with names <begin>.log...<end>.log, produced\n\
       with FORM and writes them to the database id<prototype>.dat. The first\n\
       identity will have number firstid.\n\n\
       Symbols have to be specified for fermat. They have to be given values by\n\
       appending an equality sign and a rational number, e.g. ep=1/5. The number\n\
       should be chosen in such a way, that vanishing coefficients are uniquely\n\
       identified. A rule of thumb is to use inverses of relatively large\n\
       primes.\n\n\
       The option -n corresponds to master integrals with irreducible\n\
       numerators.\n";

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
      shift = 1;

      switch(argv[1][1])
	{
	case 'n':
	  break;
	default:
	  cerr << "Unknown option " << argv[1] << endl;
	  return 1;
	  break;
	}
    }
  
  IntegralMap integrals("inc.dat");
  if (shift) integrals.disable(IntegralMap::SolveNumerators);

  const string identifier(argv[1+shift]);
  const int begin(atoi(argv[2+shift]));
  const int end(atoi(argv[3+shift]));

  IdentityGenerator identities(integrals);
  identities.enable(IdentityGenerator::StoreIdentities);
  if (!identities.n_identities())
    identities.shift_n_identities(atoi(argv[4+shift]));
  
  FermatInterface ferm;
  Coefficient::CAS = &ferm;
  vector<pair<string, string> > rules;
  for (int i = 5+shift; i < argc; ++i)
    {
      const string token(argv[i]);
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
  
  for (int count = begin; count <= end; ++count)
    {
      ostringstream log_name;
      log_name << count << ".log";
      ifstream log_file(log_name.str().c_str());

      string current_identity;

      if (!getline(log_file, current_identity, '=') ||
	  !getline(log_file, current_identity, ';'))
	{
	  cerr << "No identities in file " << log_name << endl;
	  return 1;
	}
  
      vector<Integral> updated;

      do
	{
	  identities.shift_n_identities(1);
      

          // transfer identity in the form of string 'current_identity' into
	  // Expression object 'modified_identity'; Expression is a table of
	  // pairs: Integral, Coefficient; such a table is returned by terms()
	  // method
	  Expression modified_identity = integrals.expression(current_identity);
      
	  if (!identifier.empty() && !modified_identity.null())
	    {
	      Expression temp_identity;
	      vector<pair<Integral, Coefficient> > terms =
	                                           modified_identity.terms();
	  
	      for (vector<pair<Integral, Coefficient> >:: iterator t = 
	           terms.begin(); t != terms.end(); ++t)
		if (t->first.identifier() == identifier)
		  temp_identity.add(t->first, t->second);
	  
	      modified_identity = temp_identity;
	    }
      
	  if (!rules.empty()) modified_identity.replace(rules);
      
	  Integral i = integrals.update(modified_identity);
	  if (i.defined())
	    {
	      updated.push_back(i);
	  
	      Expression original_identity = 
		integrals.expression(erase_whitespace(current_identity));
	      
	      identities.write_identity(i, original_identity);
	    }
	}
      while (getline(log_file, current_identity, '=') &&
	     getline(log_file, current_identity, ';'));
  
      log_file.close();
    }
  
  integrals.write();

  cout << "no. of identities: " << identities.n_identities() << endl;
}
