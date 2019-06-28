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

const char* usage = " [-s] input output symbols\n\n\
       Simplifies a list of expressions given in the input file using the\n\
       solution databases. The input expressions have to be given in the form\n\
       expr = ... ; , where expr is some string and the dots stand for an\n\
       expression containing bracketed integrals, as given by the FORM bracket\n\
       statement. The list of symbols has to be specified in order for fermat\n\
       to work correctly. They may be given values by appending an equality\n\
       sign with the desired value, e.g. ep=1/5. With option -s, the input\n\
       file should only contain a single expression and nothing else.\n";

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

  if (args.size() < 2)
    {          
      cout << "usage: " << argv[0] << usage;
      return 0;
    }

  ifstream input(args[0]);
  ofstream output(args[1]);

  FermatInterface ferm;
  Coefficient::CAS = &ferm;
  vector<pair<string, string> > rules;

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

  IntegralMap integrals;

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
