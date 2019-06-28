/******************************************************************************
 *                                                                            *
 * Copyright (C) 2006 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include "IdSolver.hpp"

/******************************************************************************
 *                                                                            *
 * globals                                                                    *
 *                                                                            *
 ******************************************************************************/

IntegralMap integrals("inc.dat");

int n_scalars;
int n_denominators;

set<Integral> generators;

/******************************************************************************
 *                                                                            *
 * integral                                                                   *
 *                                                                            *
 ******************************************************************************/

Integral
integral(const string& identifier, const vector<Power>& powers)
{
  ostringstream i;
  i << identifier << "(";
  for (vector<Power>::const_iterator p = powers.begin(); p != powers.end(); ++p)
    {
      if (p != powers.begin()) i << ",";
      i << (int) *p;
    }
  i << ")";

  return integrals.integral(i.str());
}

/******************************************************************************
 *                                                                            *
 * update                                                                     *
 *                                                                            *
 ******************************************************************************/

void
update(const Integral& i)
{
  string identifier = i.identifier();
  vector<Power> powers = i.powers();
  int last = i.n_denominators()-1;
  Integral g;

  do
    {
      Integral j = integral(identifier, powers);
      
      if (j.assigned())
	{
	  g = j;
	  break;
	}
    }
  while (++powers[last] < 127);
    
  if (!g.defined())
    {
      cerr << "No recurrence relation found for " << i << endl;
      exit(1);
    }
  
  if (!generators.insert(g).second) return;

  vector<Integral> masters = g.value().integrals();
  for (vector<Integral>::iterator j = masters.begin(); j != masters.end(); ++j)
    if (j->identifier() != identifier) update(*j);
}

/******************************************************************************
 *                                                                            *
 * read prototype                                                             *
 *                                                                            *
 ******************************************************************************/

void
read_prototype(istream& input, PrototypeMap& prototypes, int number)
{
  int n_prototypes = 0 ;
  
  Prototype* p = NULL ;
  
  while (input)
    {
      string id;
      
      input >> id;
      
      if (id == "n")
        {
	  if(p)
	    {
	      if (++n_prototypes == number)
		{
		  p->assign_momenta();
		  n_scalars = p->n_scalars();
		  n_denominators = p->n_edges();
		  prototypes.insert(*p);
		  return;
		}
	    }
	  int n ;
	  input >> n ;
	  p = new Prototype(n) ;
        }
      else if (id == "e")
        {
          int n1, n2;
          string m;
          input >> n1 >> n2 >> m;
          p -> insert_edge(n1,n2,m);
        }
      
      else if (id != "")
        {
          cerr << "Unknown identifier: " << id << endl;
          exit(1);
        }
    }
  if (++n_prototypes == number)
    {
      p->assign_momenta();
      n_scalars = p->n_scalars();
      n_denominators = p->n_edges();
      prototypes.insert(*p);
      return;
    }

  cerr << "No prototype found" << endl;
  exit(1);
}

/******************************************************************************
 *                                                                            *
 * main                                                                       *
 *                                                                            *
 ******************************************************************************/

int
main(int argc, char* argv[])
{
  if (argc != 4)
    {
      cout << "usage: " << argv[0] << " protolist protonumber order\n\n"
	   << "       Create the system of identities for prototype protonumber from the\n"
	   << "       protolist within the range (order,1).\n";
      exit(0);
    }

  /****************************************
   *
   * create identity databases
   *
   */

  FermatInterface math;
  Coefficient::CAS = &math;

  math.symbol("ep");
  math.symbol("x");

  vector<pair<string, string> > rules;
  rules.push_back(make_pair("ep","1/97"));
  rules.push_back(make_pair("x","1/241"));

  integrals.enable(IntegralMap::LaportaOrdering);

  PrototypeMap prototypes;
  prototypes.enable(PrototypeMap::CreateDatabases);
  prototypes.enable(PrototypeMap::StoreIdentities);
  prototypes.enable(PrototypeMap::SolveX);
  prototypes.enable(PrototypeMap::Postscript);
  prototypes.replacement_rules(rules);
  prototypes.denominator_symmetrization_order(atoi(argv[3])+1);
  PrototypeMap::ibp_procedure = "ibplaporta";

  ifstream input(argv[1]) ;

  read_prototype(input, prototypes, atoi(argv[2]));

  prototypes.complete();
  prototypes.solve(atoi(argv[3]),1,integrals);

  /****************************************
   *
   * find the integrals, whose reduction
   * generates the recurrence relations.
   *
   */

  vector<Power> powers(n_denominators, 1);
  for (int i = n_denominators; i < n_scalars; ++i) powers.push_back(0);
  update(integral("PR0", powers));
  
  ofstream Integrals("Integrals");

  for (set<Integral>::iterator i=generators.begin(); i != generators.end(); ++i)
    Integrals << *i << endl;
}
