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

const char* usage = " [-s] replacements input output symbols\n\n\
       Replaces master integrals a list of expressions given in the input file\n\
       using the solution databases and a replacements file, which is a list\n\
       of pairs made of the old master integral and a new master integral. The\n\
       input expressions have to be given in the form expr = ... ; , where\n\
       expr is some string and the dots stand for an expression containing\n\
       bracketed integrals, as given by the FORM bracket statement. The list\n\
       of symbols has to be specified in order for fermat to work correctly.\n\
       They may be given values by appending an equality sign with the desired\n\
       value, e.g. ep=1/5. With option -s, the input file should only contain\n\
       a single expression and nothing else.\n";

/******************************************************************************
 *                                                                            *
 * main                                                                       *
 *                                                                            *
 ******************************************************************************/

int
main(int argc, char* argv[])
{
  bool single = false;
  vector<char*> args;

  for (int i = 1; i < argc; ++i)
    if (argv[i][0] == '-')
      {
	switch (argv[i][1])
	  {
	  case 's':
	    single = true;
	    break;
	  default:
	    cerr << "Unknown option " << argv[i] << endl;
	    return 1;
	  }
      }
    else
      args.push_back(argv[i]);

  if (args.size() < 3)
    {          
      cout << "usage: " << argv[0] << usage;
      return 0;
    }

  ifstream mapping(args[0]);
  ifstream input(args[1]);
  ofstream output(args[2]);
  
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
  
  IntegralMap integrals(".tmp");
  
  // determination of the identities to invert
  
  while (mapping)
    {
      string old_master_name, new_master_name;
      mapping >> old_master_name >> new_master_name;
      if (old_master_name.empty() || new_master_name.empty()) continue;
      Integral old_master = integrals.integral(old_master_name);
      Integral new_master = integrals.integral(new_master_name);
      
      // run solve_integrals, to get the solution for the new master integral
      
      ofstream tosolve(".masters.tmp.in");
      tosolve << new_master_name;
      tosolve.close();
      
      string command("solve_integrals .masters.tmp.in .masters.tmp.out");
      for (int i = 3; i < args.size(); ++i)
       {
	  command += " ";
	  command += args[i];
        }
      
      system(command.c_str());

      // get rid to the first line, which is "fill integral = " and read in
      // the identity
      
      ifstream solution(".masters.tmp.out");

      string tokens;
      solution >> tokens;
      if (tokens.empty()) continue;
      solution >> tokens >> tokens;
      
      string identity;
      getline(solution, identity, ';');
      solution.close();
      
      // substract the LHS to obtain an identity
      
      Expression id = integrals.expression(identity);
      id.add(new_master, Coefficient("-1"));
      id.simplify();

      // assign the solution for the old master to the new master
      
      Expression expr = id.solve(old_master);
      if (!expr.defined())
        {
	  cout << "The master integral " << old_master_name
	       << " cannot be replaced with " << new_master_name << endl;
	}
      old_master.assign(expr);
    }

  // cleanup

  unlink(".masters.tmp.in");
  unlink(".masters.tmp.out");
  
  // simplification of the expressions
  
  string buffer;

  if (single)
    {
      string line;
      while (input)
        {
	  getline(input, line);
	  buffer += line;
	}
      buffer= erase_whitespace(buffer);
      Expression expr = integrals.expression(buffer);
      expr.simplify();
      expr.replace(rules);
      output << expr;
      return 0;
    }

  while (input)
    {
      getline(input, buffer, '=');
      buffer= erase_whitespace(buffer);
      if (buffer.empty()) continue;
      output << buffer << " =\n\n";

      getline(input, buffer, ';');
      buffer = erase_whitespace(buffer);

      Expression expr = integrals.expression(buffer);
      expr.simplify();
      expr.replace(rules);
	
      output << expr << "\n;\n\n";
    }
}
