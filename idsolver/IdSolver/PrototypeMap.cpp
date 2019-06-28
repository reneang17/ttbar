/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include "IdSolver.hpp"

/******************************************************************************
 *                                                                            *
 * static data members initialization                                         *
 *                                                                            *
 ******************************************************************************/

string PrototypeMap::ibp_procedure = "ibp";

const string PrototypeMap::_prototype_name_prefix = "PR";

/******************************************************************************
 *                                                                            *
 * destructor                                                                 *
 *                                                                            *
 ******************************************************************************/

PrototypeMap::~PrototypeMap()
{
  for (StorageType::iterator p=_prototypes.begin(); p != _prototypes.end(); ++p)
    delete *p;
}

/******************************************************************************
 *                                                                            *
 * insert                                                                     *
 *                                                                            *
 ******************************************************************************/

bool
PrototypeMap::insert(const Prototype& p)
{
  ostringstream name;
  name << _prototype_name_prefix << _n_prototypes;
  NamedPrototype* np = new NamedPrototype(p, name.str());

  if (_prototypes.find(np) == _prototypes.end())
    {
      np->normalize_momenta();
      //cout << np->p << endl;
      insert(np);
      return true;
    }
  else
    {
      delete np;
      return false;
    }
}

/******************************************************************************
 *
 *  This is the key function where a lot is happening and a lot is produced,
 *  e.g scalar product remapping, subprototypes and matching.
 *
 *  Here is where the collestion of PR?s is created.
 *
******************************************************************************/
void
PrototypeMap::insert(NamedPrototype* p)
{
  ++_n_prototypes;
  _prototypes.insert(p);
  _sorted_prototypes.insert(p);

  // postscript

  if (_options & Postscript) p->postscript_print(p->name+".ps");

  // definition

  ofstream definition((p->name+"definition").c_str());

  ostringstream edges;
  p->print_edge_list(edges);
  string edge_list = edges.str();
  
  int begin = 0, end;

  while ((end = edge_list.find('\n', begin)) != string::npos)
    {
      definition << "*\t" << string(edge_list, begin, end-begin) << "\n";
      begin = end+1;
    }

  definition << "\n"
	     << p->name << "*";

  pair<vector<string>, vector<string> > scalars = p->scalar_product_remapping();

  int index = 1;

  for (int e = 0; e < p->n_edges(); ++e)
    if (!p->is_external_edge(e))
      {
	if (index > 1) definition << "*";
	definition << "DS(";
	p->print_normalized_momentum(e, definition);
	definition << "," << p->mass(e) << ",n" << index++ << ")";
      }

  for (vector<string>::iterator s = scalars.second.begin();
       s != scalars.second.end(); ++s, ++index)
    definition << "*" << *s << "^(-n" << index << ")";

  definition << "\n";
  
  definition.close();
      
  // scalar product remapping, subprototypes and matching

  string matching_procedure = p->name + "matching.prc";

  ofstream matching(matching_procedure.c_str());

  matching << "#procedure " << p->name << "matching\n\n"
	   << "id DS(-K?,m?,n?) = DS(K,m,n);\n"
	   << "Normalize (0) DS, 1;\n\n"
	   << "b ";

  vector<string> momenta = p->momentum_basis();
  copy(momenta.begin(), momenta.end(), ostream_iterator<string>(matching, " "));

  matching << p->name << ";\n"
	   << ".sort\n"
	   << "Keep Brackets;\n\n"
	   << "if (match(" << p->name << "));\n\n";

  for (vector<string>::iterator s = scalars.first.begin();
       s != scalars.first.end(); ++s)
    matching << "  id " << *s << ";\n";

  matching << "\nendif;\n\n"
	   << "b SS, DS;\n"
	   << ".sort:" << p->name << ";\n"
	   << "Keep Brackets;\n\n"
	   << "#do i=1,1\n"
	   << "  id once SS(K?)*DS(K?,m?,n?{>0}) = DS(K,m,n-1)+m^2*DS(K,m,n);\n"
	   << "  if (match(SS(K?)*DS(K?,m?,n?{>0}))) redefine i \"0\";\n"
	   << "  b SS, DS;\n"
	   << "  .sort:" << p->name << ";\n"
	   << "  Keep Brackets;\n"
	   << "#enddo\n\n"
	   << ".sort:" << p->name << ";\n\n"
	   << "if (match(" << p->name << "*DS(K?,m?,0)));\n\n"
	   << "#ifdef `INCOMPLETE\'\n\n"
	   << "  discard;\n\n"
	   << "#else\n\n";
  
  matching.close();

  const int n_denominators = p->n_edges()-p->n_external_edges();
  const int max_canceled = n_denominators-p->n_cycles();

  bool first = true;
  StorageType children;

  for (int n_canceled = max_canceled; n_canceled > 0; --n_canceled)
    {
      Partition 
	denominator_positions(n_denominators,n_denominators-n_canceled,1);

      do
	{
	  vector<int> position = denominator_positions.current();

	  vector<int> node_remapping(p->n_nodes());
	  for (int i = 0; i < p->n_nodes(); ++i) node_remapping[i] = i;

	  bool loop = false;

	  for (int e = 0, d = 0; e < p->n_edges(); ++e)
	    if (!p->is_external_edge(e) && !position[d++])
	      {
		const pair<int, int> an = p->adjacent_nodes(e);

		int n1 = node_remapping[an.first];
		int n2 = node_remapping[an.second];

		if (n1 == n2)
		  {
		    loop = true;
		    break;
		  }

		if (n1 > n2) swap(n1, n2);

		for (int i = 0; i < p->n_nodes(); ++i)
		  if (node_remapping[i] == n2) node_remapping[i] = n1;
		  else if (node_remapping[i] > n2) --node_remapping[i];
	      }

	  if (loop) continue;

	  ostringstream name;
	  name << _prototype_name_prefix << _n_prototypes;

	  NamedPrototype* subp = 
	    new NamedPrototype(p->n_nodes()-n_canceled, name.str());

	  for (int e = 0, d = 0; e < p->n_edges(); ++e)
	    if ((!p->is_external_edge(e) && position[d++]) ||
		p->is_external_edge(e))
	      {
		const pair<int, int> an = p->adjacent_nodes(e);
		const int n1 = node_remapping[an.first];
		const int n2 = node_remapping[an.second];

		subp->insert_edge(n1, n2, p->mass(e));
	      }

	  subp->assign_momenta();
	  vector<int> edge_remapping(subp->n_edges());

	  for (int e = 0, sube = 0, d = 0; e < p->n_edges(); ++e)
	    if ((!p->is_external_edge(e) && position[d++]) ||
		p->is_external_edge(e))
	      {
		if (p->is_external_edge(e))
		  subp->copy_external_momentum(sube, e, *p);

		edge_remapping[sube++] = e;
	      }
	  subp->normalize_momenta();

	  if (subp->has_scaleless_components() ||
	      (_selector && !_selector(*p, *subp, edge_remapping)))
	    {
	      delete subp;
	      continue;
	    }

	  // determination of the matching equations
	    
	  NamedPrototype* pp = subp;
	  const int n_momenta = subp->momentum_basis().size();

	  vector<vector<int> > 
	    equation(subp->n_edges(),vector<int>(2*n_momenta));
	    
	  StorageType::iterator storedp = _prototypes.find(subp);
	    
	  if (storedp == _prototypes.end())
	    {
	      // the equations are in the edge order

	      for (int i = 0; i < pp->n_edges(); ++i)
		{
		  const vector<int> p_momentum = p->momentum(edge_remapping[i]);
		  const vector<int> subp_momentum = subp->momentum(i);

		  for (int j = 0; j < n_momenta; ++j)
		    {
		      equation[i][j] = p_momentum[j];
		      equation[i][j+n_momenta] = subp_momentum[j];
		    }
		}
		
	      insert(subp);
	    }
	  else
	    {
	      pp = *storedp;
		
	      // the equations are in the canonical labelling order
		
	      const vector<pair<int, int> > 
		subp_label = subp->integral_edge_labelling();
	      const vector<pair<int, int> > 
		storedp_label = (*storedp)->integral_edge_labelling();

	      for (int i = 0; i < pp->n_edges(); ++i)
		{
		  const vector<int> p_momentum = 
		    p->momentum(edge_remapping[subp_label[i].first]);
		  const vector<int> storedp_momentum=
		    (*storedp)->momentum(storedp_label[i].first);
		  const int sign = subp_label[i].second*storedp_label[i].second;
		    
		  for (int j = 0; j < n_momenta; ++j)
		    {
		      equation[i][j] = p_momentum[j];
		      equation[i][j+n_momenta] = sign*storedp_momentum[j];
		    }
		}

	      delete subp;
	    }

	  // correction of the equations by momentum conservation

	  const int p_eliminated_momentum = p->normalize_momenta();
	  const int pp_eliminated_momentum = pp->normalize_momenta();

	  if (pp_eliminated_momentum >= 0)
	    {
	      const vector<int> relation = pp->momentum_conservation_relation();
	      
	      for (int i = 0; i < pp->n_edges(); ++i)
		if (equation[i][n_momenta+pp_eliminated_momentum])
		  {
		    const int sign = 
		      equation[i][n_momenta+pp_eliminated_momentum]
		      *relation[pp_eliminated_momentum];

		    for (int j = 0; j < relation.size(); ++j)
		      equation[i][n_momenta+j] -= sign*relation[j];
		  }
	    }

	  // solution by gaussion elimintation
	    
	  for (int i = 0; i < n_momenta; ++i)
	    {
	      for (int j = i; j < pp->n_edges(); ++j)
		if (equation[j][i])
		  {
		    if (j != i) swap(equation[i], equation[j]);
		    break;
		  }
		
	      if (equation[i][i] == -1)
		for (int j = i; j < 2*n_momenta; ++j)
		  equation[i][j] = -equation[i][j];
		
	      for (int j = 0; j < pp->n_edges(); ++j)
		if (j != i && equation[j][i])
		  {
		    const int sign = equation[j][i];
		    for (int k = i; k < 2*n_momenta; ++k)
		      equation[j][k] -= sign*equation[i][k];
		  }
	    }
	
	  // output

	  matching.open(matching_procedure.c_str(), ios::app);

	  matching << "  ";
	  if (first) first = false;
	  else matching << "else";
	  matching << "if (match(" << p->name;

	  index = 1;

	  for (int e = 0, d = 0; e < p->n_edges(); ++e)
	    if (!p->is_external_edge(e) && !position[d++])
	      {
		matching<< "*DS(";
		p->print_normalized_momentum(e, matching);
		matching << ",m" << index++ << "?,0)";
	      }
	
	  matching << "));\n\n"
		   << "    id " << p->name;

	  index = 1;

	  for (int e = 0, d = 0; e < p->n_edges(); ++e)
	    if (!p->is_external_edge(e) && !position[d++])
	      {
		matching<< "*DS(";
		p->print_normalized_momentum(e, matching);
		matching << ",m" << index++ << "?,0)";
	      }

	  matching << " = " << pp->name << "\n"
		   << "      *replace_(";

	  const vector<string> p_basis = p->momentum_basis();
	  const vector<string> pp_basis = pp->momentum_basis();
	
	  bool first = true;

	  for (int i = 0; i < n_momenta; ++i)
	    {
	      if (i == p_eliminated_momentum) continue;

	      if (first)
		first = false;
	      else
		matching << ",\n                ";

	      matching << p_basis[i] << ",";

	      bool first_output = true;
	      for (int j = 0; j < n_momenta; ++j)
		switch (equation[i][j+n_momenta])
		  {
		  case +1:
		    if (!first_output) matching << "+";
		    else first_output = false;
		    matching << pp_basis[j];
		    break;
		  case -1:
		    if (first_output) first_output = false;
		    matching << "-" << pp_basis[j];
		    break;
		  case 0:
		    break;
		  default:
		    cerr << "PrototypeMap::insert: error in matching\n\n";
		    exit(1);
		  }
	    }
	
	  matching << ");\n\n";

	  matching.close();

	  children.insert(pp);
	}
      while (denominator_positions.next());
    }

  matching.open(matching_procedure.c_str(), ios::app);

  if (!first) matching << "  endif;\n\n";

  matching << "  id SS(K?) = K.K;\n\n"
	   << "#endif\n\n"
	   << "endif;\n\n"
	   << ".sort:" << p->name << ";\n\n"
	   << "#include userkinematics\n\n"
	   << "#endprocedure\n";

  matching.close();

  // complete matching list

  SortedStorageType sorted_children(children.begin(), children.end());

  ofstream matchings((p->name+"matchings").c_str());

  matchings << "#call " << p->name << "matching\n";

  for (SortedStorageType::iterator pp = sorted_children.begin();
       pp != sorted_children.end(); ++pp)
    matchings << "#call " << (*pp)->name << "matching\n";

  matchings.close();
}

/******************************************************************************
 *                                                                            *
 * read                                                                       *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Read the prototypes from the current directory and insert them into the
 * prototypes tree. No checks on correctness are performed.
 *
 * Contributed by T. Schutzmeier, 12 Feb 2008
 * Corrected by normalizing the momenta, MC, 10 Oct 2010
 *
 */

void
PrototypeMap::read()
{
  if(_prototypes.size() != 0 || _sorted_prototypes.size() != 0) {
    cerr << "error: call to PrototypeMap::read() not allowed:" << endl
         << "PrototypeMap already populated." << endl
         << "Exiting..." << endl;
    exit(1);
  }
    
  struct dirent **namelist;
  int n_files = scandir("./", &namelist, 0, alphasort);

  if(n_files < 0) {
    cerr << "error: could not open directory ./" << endl;
    exit(1);
  }

  for(int j = 0; j < n_files; ++j) {
    string filename(namelist[j]->d_name);
    size_t n_filename = filename.size();
 
    if(filename.find("PR")!=0 || filename.find("definition")!=n_filename-10) 
      continue;

    string PRname = filename.substr(0, n_filename-10);
 
    ifstream file(filename.c_str());
 
    if (file.is_open())
    {
      int nodes = 0;
      vector<pair<int, int> > ionodes;
      vector<string> masses;
      vector<string> momenta;
      while(!file.eof())
      {
        string buffer;
        getline(file, buffer);
        if(buffer.size() != 0 && buffer[0] == '*') {
          int _onode, _inode;
          string _mass, _momentum;

          for(string::iterator it = buffer.begin(); it != buffer.end(); ++it)
            if(*it == ',') *it = ' ';
          size_t pos = buffer.find(':');
          buffer.erase(0,pos+2);
          pos = buffer.find('>');
          buffer.erase(pos-1, pos);
  
          istringstream line(buffer);

          line >> dec >> _inode >> dec >> _onode >> _mass >> _momentum;
          ionodes.push_back(make_pair(_inode, _onode));
          masses.push_back(_mass);
	  momenta.push_back(_momentum);

          if(nodes < max(_inode,_onode))
            nodes = max(_inode, _onode);
        }
      }
      file.close();
  
      NamedPrototype* np = new NamedPrototype(++nodes, PRname);
      for(int i = 0; i < ionodes.size(); ++i)
        np->insert_edge(ionodes[i].first, ionodes[i].second, masses[i]);
      np->assign_momenta();

      for (int e = 0; e < np->n_edges(); ++e)
	if (np->is_external_edge(e))
	{
	  if (momenta[e][0] == '-')
	  {
	    string _momentum(momenta[e], 1, momenta[e].size()-1);
	    np->assign_external_momentum(_momentum, e, -1);
	  }
	  else
	  {
	    np->assign_external_momentum(momenta[e], e, +1);
	  }
	}
      np->normalize_momenta();

      ++_n_prototypes;
      _prototypes.insert(np);
      _sorted_prototypes.insert(np);
    }
  }
}

/******************************************************************************
 *                                                                            *
 * complete                                                                   *
 *                                                                            *
 * Create the set of files:  PR0definition, PR0matching.prc,                  * 
 *                           PR0symmetries.prc, PR0identities.prc,            *
 *                           PR0matchings                                     *
 *                                                                            *
 ******************************************************************************/

void
PrototypeMap::complete()
{
  cout << "Creating administrative and identity files...\n";

  set<string> momentum_names;
  set<string> prototype_names;

  for (StorageType::iterator p = _prototypes.begin();
       p != _prototypes.end(); ++p)
    {
      vector<string> momenta = (*p)->momentum_basis();
      momentum_names.insert(momenta.begin(), momenta.end());
      prototype_names.insert((*p)->name);
    }

  const int n_internal_edges = 
    +(*_sorted_prototypes.begin())->n_edges()
    -(*_sorted_prototypes.begin())->n_external_edges();

  const int n_scalars = (*_sorted_prototypes.begin())->n_scalars();

  // creation of the decls file

  ofstream decls("decls");

  decls << "Off Statistics;\n\n";

  for (set<string>::iterator p = prototype_names.begin();
       p != prototype_names.end(); ++p)
    decls << "table sparse " << *p << "(" << n_scalars << ");\n";

  decls << "cf DS SS;\n"
	<< "cf replace; * necessary for two stage replace\n";

  decls << "v";
  for (set<string>::iterator p = momentum_names.begin();
       p != momentum_names.end(); ++p) decls << " " << *p;
  decls << ";\n" ;

  decls << "v K";
  int n_indices = 2;
  if (n_indices < n_internal_edges) n_indices = n_internal_edges;
  for (int i = 1; i <= n_indices; ++i) decls << " K" << i;
  decls << ";\n";

  decls << "s m";
  for (int i = 1; i <= n_internal_edges; ++i) decls << " m" << i;
  decls << ";\n";
  
  decls << "s n";
  n_indices = 2;
  if (n_indices < n_scalars) n_indices = n_scalars;
  for (int i = 1; i <= n_indices; ++i) decls << " n" << i;
  decls << ";\n";

  decls << "s d, ep;\n"
	<< "dimension d;\n\n"
	<< "#include userdecls\n";

  decls.close();

  // creation of the output file

  ofstream output("output");
  
  output << "#include useroutput\n\n"
	 << "b " << _prototype_name_prefix << "0, ..., "
	 << _prototype_name_prefix << _prototypes.size()-1 << ";\n"
	 << "print;\n"
	 << ".end\n";

  output.close();

  // creation of the matchings file

  ofstream matchings("matchings");

  for (SortedStorageType::iterator p = _sorted_prototypes.begin();
       p != _sorted_prototypes.end(); ++p)
    matchings << "#call " << (*p)->name << "matching\n";

  matchings.close();

  // creation of the integrals, identities and symmetries files

  ofstream integrals("integrals");

  integrals << "id DS(K?,m?,0) = 0;\n\n";

  for (SortedStorageType::reverse_iterator p = _sorted_prototypes.rbegin(); 
       p != _sorted_prototypes.rend(); ++p)
    {
      // identities

      string prefix = (*p)->name + "identities";
      string identities_name = prefix + ".prc";

      ofstream identities(identities_name.c_str());
      
      identities << "#procedure " << (*p)->name << "identities(";
      for (int i = 1; i <= n_scalars; ++i)
	{
	  if (i > 1) identities << ",";
	  identities << "n" << i;
	}
      identities << ")\n\n";

      identities << "#-\n"
		 << "#include decls\n\n";

      int index = 1;

      for (vector<GeneratorType>::iterator g = _generators.begin();
	   g != _generators.end(); ++g)
	identities << (*g)(**p, index);

      identities <<"mul replace_(";
      for (int i = 1; i <= n_scalars; ++i)
	{
	  if (i > 1) identities << ",";
	  identities << "n" << i << ",`n" << i << "\'";
	}
      identities << ");\n"
		 << "id replace(?args) = replace_(?args);\n\n";

      identities << "#include " << (*p)->name << "matchings\n"
		 << "#include integrals\n"
		 << "#include output\n\n"
		 << "#endprocedure\n";

      identities.close();

      // symmetries

      string symmetries_name = (*p)->name + "symmetries.prc";

      ofstream symmetries(symmetries_name.c_str());
      
      symmetries << "#procedure " << (*p)->name << "symmetries(";
      for (int i = 1; i <= n_scalars; ++i)
	{
	  if (i > 1) symmetries << ",";
	  symmetries << "n" << i;
	}
      symmetries << ")\n\n";

      symmetries << "#-\n"
		 << "#include decls\n\n";

      index = 1;

      symmetries << symmetry_generator(**p, index);

      symmetries <<"mul replace_(";
      for (int i = 1; i <= n_scalars; ++i)
	{
	  if (i > 1) symmetries << ",";
	  symmetries << "n" << i << ",`n" << i << "\'";
	}
      symmetries << ");\n"
		 << "id replace(?args) = replace_(?args);\n\n";

      symmetries << "#include " << (*p)->name << "matchings\n"
		 << "#include integrals\n"
		 << "#include output\n\n"
		 << "#endprocedure\n";

      symmetries.close();

      // integrals

      index = 1;
      
      integrals << "id " << (*p)->name;

      for (int e = 0; e < (*p)->n_edges(); ++e)
	if (!(*p)->is_external_edge(e))
	  {
	    integrals << "*DS(";
	    (*p)->print_normalized_momentum(e, integrals);
	    integrals << ",m" << index << "?,n" << index << "?)";
	    ++index;
	  }
      
      pair<vector<string>,vector<string> > 
	scalars = (*p)->scalar_product_remapping();

      for (vector<string>::iterator s = scalars.second.begin();
	   s != scalars.second.end(); ++s, ++index)
	integrals << "*" << *s << "^n" << index << "?";
      
      integrals << " = " << (*p)->name << "(";
      
      for (index = 1; index <= scalars.first.size(); ++index)
	{
	  if (index > 1) integrals << ",";
	  integrals << "n" << index;
	}
      
      for (; index <= scalars.first.size()+scalars.second.size(); ++index)
	integrals << ",-n" << index;
      
      integrals << ");\n";
    }
  
  integrals.close();
}

/******************************************************************************
 *                                                                            *
 * solve                                                                      *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Solution of the system starting from the simplest prototypes. The system
 * must be complete() before!
 *
 */

void
PrototypeMap::solve(int max_sum_denominator_powers,
		    int max_sum_numerator_powers,
		    IntegralMap& integrals,
		    int master_denominator_powers,
		    int master_numerator_powers) const
{
  IdentityGenerator identities(integrals);
  if (_options & Verbose)
    identities.enable(IdentityGenerator::Verbose);
  if (_options & StoreIdentities) 
    identities.enable(IdentityGenerator::StoreIdentities);
  if (!_rules.empty()) identities.replacement_rules(_rules);
  
  if (master_denominator_powers < 0) 
    master_denominator_powers = max_sum_denominator_powers;
  if (master_numerator_powers < 0)
    master_numerator_powers = max_sum_numerator_powers;

  Timer total_time;
  for (SortedStorageType::reverse_iterator p = _sorted_prototypes.rbegin(); 
       p != _sorted_prototypes.rend(); ++p)
    {
      if (_options & SolveX)
	{
	  bool has_no_X = true;
	  for (int e = 0; e < (*p)->n_edges(); ++e)
	    if ((*p)->mass(e) == "X")
	      {
		has_no_X = false;
		break;
	      }
	  if (has_no_X) continue;
	}

      Timer prototype_time;

      SymmetricSelector sym_sel(**p);

      integrals.set_n_denominators((*p)->name,
				   (*p)->n_edges()-(*p)->n_external_edges());

      if ((*p)->edge_symmetry_group().size() > 1 &&
	  (_denominator_symmetrization_order > 0 ||
	   _numerator_symmetrization_order > 0))
	{
	  cout << "Symmetrizing " << (*p)->name << "...\n";
	  identities.solve_fixed_denominators((*p)->n_scalars(),
				      (*p)->n_edges()-(*p)->n_external_edges(),
				      _denominator_symmetrization_order,
				      _numerator_symmetrization_order,
				      (*p)->name+"symmetries", 
				      sym_sel);

	  if (identities.dumped()) return;
	}

      cout << "Solving identities for " << (*p)->name << "...\n";
      if (_options & AsymmetricPoints)
	identities.solve_fixed_denominators((*p)->n_scalars(),
				    (*p)->n_edges()-(*p)->n_external_edges(),
				    max_sum_denominator_powers, 
				    max_sum_numerator_powers,
				    (*p)->name+"identities",
				    sym_sel);
      else
	identities.solve_fixed_denominators((*p)->n_scalars(),
				    (*p)->n_edges()-(*p)->n_external_edges(),
				    max_sum_denominator_powers, 
				    max_sum_numerator_powers,
				    (*p)->name+"identities");
      
      if (identities.dumped()) return;
  
      unlink("IdSolverDump");

      cout << "  " << identities.n_identities() << " identities\n"
	   << "  committing to disk...\n";
      
      if (_options & CreateDatabases)
	integrals.write();
      else
	{
	  ofstream substitutions("Substitutions");
	  integrals.print(substitutions,
			  master_denominator_powers,
			  master_numerator_powers);
	  substitutions.close();

	  ofstream masters("Masters");
	  integrals.print_masters(masters,
				  master_denominator_powers,
				  master_numerator_powers);
	  masters.close();
	}

      cout << "  ";
      prototype_time.print(cout);
      cout << " running time\n";
    }

  cout << "\n";
  total_time.print(cout);
  cout << " total running time\n";
}

/******************************************************************************
 *                                                                            *
 * print                                                                      *
 *                                                                            *
 ******************************************************************************/

void
PrototypeMap::print(ostream& output) const
{
  output << _n_prototypes << " prototype(s) in the list\n\n";
  
  for (StorageType::const_iterator p = _prototypes.begin();
       p != _prototypes.end(); ++p)
    {
      output << "---------- " << (*p)->name << " ----------\n\n";
      (*p)->print_edge_list(output);
      output << "\n";
    }
}

/******************************************************************************
 *                                                                            *
 * ibp_generator                                                              *
 *                                                                            *
 * Generate all IBP relations for a prototype.  Return the relations          *
 * as a string in FORM format.                                                *
 *                                                                            *
 ******************************************************************************/

string
PrototypeMap::ibp_generator(NamedPrototype& p, int& index)
{
  ostringstream ibp;

  vector<string> loop_mom = p.loop_momenta();
  vector<string> num_mom = p.independent_momenta();

  ostringstream prefix;
  prefix << "." << getpid() << ".id";

  for (vector<string>::iterator k = loop_mom.begin(); k != loop_mom.end(); ++k)
    for (vector<string>::iterator q = num_mom.begin();q != num_mom.end(); ++q)
      {
	string identity;

	// This part writes a temporary FORM script, with a call to the ibp 
	// procedure from ibp.prc at some given momenta e.g
	//
	//   #call ibp(k,p1,PR0)
	//
	// Just this single line.
	ofstream generator((prefix.str()+".frm").c_str());
	generator << "#call " << ibp_procedure << "(" 
		  << *k << "," << *q << "," << p.name << ")\n";
	generator.close();

	
	// The script genrated above is now executed by FORM and the result 
	// is stored in a log file. That log file contains current IBP for 
	// the current prototype.
	// Both the .frm and the .log files are overriden by next iteration.
	system(("form -l "+prefix.str()+".frm > /dev/null").c_str());
	ifstream identities((prefix.str()+".log").c_str());

	if (!getline(identities, identity, '=') || 
	    !getline(identities, identity, ';'))
	  {
	    cerr << "PrototypeMap::ibp_generator: no identity" << endl;
	    exit(1);
	  }
	
	ibp << "l id" << index++ << " =\n" 
	    << identity << ";\n\n";

	identities.close();
     }

  unlink((prefix.str()+".frm").c_str());
  unlink((prefix.str()+".log").c_str());
  
  return ibp.str();
}

/******************************************************************************
 *                                                                            *
 * symmetry_generator                                                         *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * The symmetries that are taken into account are restriced to those that
 * have different denominator permutations. This cuts a lot of spurious
 * transformations on tadpoles.
 *
 */

string
PrototypeMap::symmetry_generator(NamedPrototype& p, int& index)
{
  ostringstream symmetries;

  const vector<vector<pair<int, int> > > original = p.edge_symmetry_group();
  if (original.size() == 1) return symmetries.str();

  // determination of the "independent" symmetry transformations

  vector<int> denominator;
  for (int i = 0, j = 0; i < p.n_edges(); ++i)
    if (!p.is_external_edge(i)) denominator.push_back(j++);
    else denominator.push_back(-1);
  
  vector<vector<pair<int, int> > > group;
  set<vector<int> > denominator_symmetry_group;

  for (vector<vector<pair<int, int> > >::const_iterator perm = original.begin();
       perm != original.end(); ++perm)
    {
      vector<int> denominator_perm;
      
      for (vector<pair<int, int> >::const_iterator e = perm->begin();
	   e != perm->end(); ++e)
	if (denominator[e->first] >= 0) 
	  denominator_perm.push_back(denominator[e->first]);
      
      pair<set<vector<int> >::iterator, bool> insert_stat =
	denominator_symmetry_group.insert(denominator_perm);

      if (insert_stat.second) group.push_back(*perm);
    }

  const int eliminated_momentum = p.normalize_momenta();
  const vector<string> basis = p.momentum_basis();
  const int n_momenta = basis.size();

  for (vector<vector<pair<int, int> > >::iterator perm = ++group.begin();
       perm != group.end(); ++perm)
    {
      vector<vector<int> > equation(p.n_edges(),vector<int>(2*n_momenta));

      // creation of the momentum transformation equations

      for (int i = 0; i < p.n_edges(); ++i)
	{
	  const vector<int> original = p.momentum(i);
	  const vector<int> transformed = p.momentum((*perm)[i].first);

	  for (int j = 0; j < n_momenta; ++j)
	    {
	      equation[i][j] = original[j];
	      equation[i][j+n_momenta] = (*perm)[i].second*transformed[j];
	    }
	}

      // correction of the equations by momentum conservation
      
      if (eliminated_momentum >= 0)
	{
	  const vector<int> relation = p.momentum_conservation_relation();
	  
	  for (int i = 0; i < p.n_edges(); ++i)
	    if (equation[i][n_momenta+eliminated_momentum])
	      {
		const int sign = 
		  equation[i][n_momenta+eliminated_momentum]
		  *relation[eliminated_momentum];
		
		for (int j = 0; j < relation.size(); ++j)
		  equation[i][n_momenta+j] -= sign*relation[j];
	      }
	}

      // solution by gaussian elimination

      for (int i = 0; i < n_momenta; ++i)
	{
	  for (int j = i; j < p.n_edges(); ++j)
	    if (equation[j][i])
	      {
		if (j != i) swap(equation[i], equation[j]);
		break;
	      }
	  
	  if (equation[i][i] == -1)
	    for (int j = i; j < 2*n_momenta; ++j)
	      equation[i][j] = -equation[i][j];
	  
	  for (int j = 0; j < p.n_edges(); ++j)
	    if (j != i && equation[j][i])
	      {
		const int sign = equation[j][i];
		for (int k = i; k < 2*n_momenta; ++k)
		  equation[j][k] -= sign*equation[i][k];
	      }
	}

      // output

      symmetries << "l id" << index++ << " =\n\n"
		 << "  #include " << p.name << "definition\n\n"
		 << "  *(1-replace(";

      bool first = true;
      
      for (int i = 0; i < n_momenta; ++i)
	{
	  if (i == eliminated_momentum) continue;

	  if (first)
	    first = false;
	  else
	    symmetries << ",\n              ";
	  
	  symmetries << basis[i] << ",";
	  
	  bool first_output = true;
	  for (int j = 0; j < n_momenta; ++j)
	    switch (equation[i][j+n_momenta])
	      {
	      case +1:
		if (!first_output) symmetries << "+";
		else first_output = false;
		symmetries << basis[j];
		break;
	      case -1:
		if (first_output) first_output = false;
		symmetries << "-" << basis[j];
		break;
	      case 0:
		break;
	      default:
		cerr << "PrototypeMap::insert: error in matching\n\n";
		exit(1);
	      }
	}
      
      symmetries << "));\n\n";
    }
  
  return symmetries.str();
}

/******************************************************************************
 *                                                                            *
 * generator_interface                                                        *
 *                                                                            *
 ******************************************************************************/

string
PrototypeMap::generator_interface(const string& generator_name,
				  NamedPrototype& p, 
				  int& index)
{
  ostringstream result;

  ostringstream prefix;
  prefix << "." << getpid() << ".id";

  ofstream generator((prefix.str()+".frm").c_str());
  generator<< "#call " << generator_name << "(" << p.name << ")\n";
  generator.close();

  system(("form -l "+prefix.str()+".frm > /dev/null").c_str());
  ifstream identities((prefix.str()+".log").c_str());
  string identity;

  while (getline(identities, identity, '=') &&
	 getline(identities, identity, ';'))
    {
      result << "l id" << index++ << " =\n" 
		<< identity << ";\n\n";
    }
      
  identities.close();

  unlink((prefix.str()+".frm").c_str());
  unlink((prefix.str()+".log").c_str());
  
  return result.str();
}
