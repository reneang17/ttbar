/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include "IdSolver.hpp"
#include <sys/stat.h>

/******************************************************************************
 *                                                                            *
 * static data members                                                        *
 *                                                                            *
 ******************************************************************************/

bool IdentityGenerator::dump = false;

const char* IdentityGenerator::_setup_key = "setup";

const char* IdentityGenerator::_generated_key = "generated";

int IdentityGenerator::_n_identities = 0;

/******************************************************************************
 *                                                                            *
 * default_selector                                                           *
 *                                                                            *
 ******************************************************************************/

PowerSelector default_selector;

/******************************************************************************
 *                                                                            *
 * contructor                                                                 *
 *                                                                            *
 ******************************************************************************/

IdentityGenerator::IdentityGenerator(IntegralMap& integrals) : 
  _options(0),
  _dumped(false),
  _integrals(integrals)
{
  struct stat buf;
  if (!stat("IdSolverDump", &buf))
    {
      ifstream dump_file("IdSolverDump");
      
      string buffer;
      while (getline(dump_file, buffer))
	{
	  istringstream line(buffer);
	  string descriptor;
	  line >> descriptor;
	  
	  if (descriptor == "procedure:")
	    line >> _procedure;
	  else if (descriptor == "powers:")
	    {
	      while (line)
		{
		  string pow;
		  line >> pow;
		  if (!pow.empty()) 
		    _powers.push_back(atoi(pow.c_str()));
		}
	    }
	  else if (descriptor == "no.")
	    {
	      line >> descriptor >> descriptor >> _n_identities;
	    }
	}

      cout << "A dump file has been detected.\n\n"
	   << "If solve() is used, the solution will start from:\n"
	   << "procedure: " << _procedure << "\n"
	   << "powers: " << _powers << "\n";
    }
}

/******************************************************************************
 *                                                                            *
 * destructor                                                                 *
 *                                                                            *
 ******************************************************************************/

IdentityGenerator::~IdentityGenerator()
{
  if (_options & StoreIdentities)
    {
      for (map<string, DB*>::iterator i = _identities.begin();
	   i != _identities.end(); ++i)
	{
	  map<string, int> ids;
	  
	  // read the known identifiers with the assigned number of denominators
	  
	  try
	    {
	      int siz;
	      int8* buf = i->second->get(_setup_key, -1, 0, -1, &siz);
	      int8* pos = buf+sizeof(int);
	      int8* end = buf+siz;
	      
	      while (pos < end)
		{
		  string id((char*) pos);
		  pos += id.length()+1;
		  int n = *((int*) pos);
		  pos += sizeof(int);
		  ids.insert(make_pair(id, n));
		}
	  
	      free(buf);
	    }
	  catch (DATABASE_ERROR e)
	    {
	      if (e.code() != DATABASE::ENOITEM)
		{
		  cerr << "IdentityGenerator::~IdentityGenerator: " 
		       << e << endl;
		  exit(1);
		}
	    }
	  
	  // update the list
	  
	  const vector<string> id_names = _integrals.identifiers();
	  
	  for (vector<string>::const_iterator id_name = id_names.begin();
	       id_name != id_names.end(); ++id_name)
	    ids[*id_name] = _integrals.get_n_denominators(*id_name);
	  
	  // write the list back
	  
	  int siz = sizeof(int);
	  for (map<string, int>::iterator id = ids.begin();
	       id != ids.end(); ++id)
	    siz += id->first.length()+1+sizeof(int);
	  
	  int8* buf = new int8[siz];
	  *((int*) buf) = _integrals.options();
	  int8* pos = buf+sizeof(int);
	  for (map<string, int>::iterator id = ids.begin();
	       id != ids.end(); ++id)
	    {
	      strcpy(pos, id->first.c_str());
	      pos += id->first.length()+1;
	      *((int*) pos) = id->second;
	      pos += sizeof(int);
	    }
	  
	  try
	    {
	      i->second->put(_setup_key, -1, buf, siz, DATABASE::DOVER);
	    }
	  catch (DATABASE_ERROR e)
	    {
	      cerr << "IdentityGenerator::~IdentityGenerator: " << e << endl;
	      exit(1);
	    }
	  
	  delete[] buf;
	  delete i->second;
	}
    }
}

/******************************************************************************
 *                                                                            *
 * solve_free_denominators                                                    *
 *                                                                            *
 ******************************************************************************/

void
IdentityGenerator::solve_free_denominators(int n_indices, 
					   int min_n_denominators, 
					   int max_sum_denominator_powers, 
					   int max_sum_numerator_powers,
					   const string& identities_procedure,
					   PowerSelector& selector)
{
  for (int n = min_n_denominators; n <= n_indices; ++n)
    {
      Partition denominator_position(n_indices, n, 1);

      do
	{
	  if (n == n_indices) max_sum_numerator_powers = 0;
	  
	  int max_bound = max_sum_denominator_powers+max_sum_numerator_powers;
	  
	  for (int bound = 0; bound <= max_bound; ++bound)
	    {
	      Partition sum(2, bound);
	      
	      do
		{
		  if (sum[0] > max_sum_denominator_powers ||
		      sum[1] > max_sum_numerator_powers) continue;

		  Partition denominator_powers(n, sum[0]);

		  do
		    {
		      if (n != n_indices)
			{
			  Partition numerator_powers(n_indices-n, sum[1]);
			  
			  do
			    {
			      vector<int> powers(n_indices);
			      int deno_pos = 0, num_pos = 0;
			      for (int i = 0; i < n_indices; ++i)
				if (denominator_position[i])
				  powers[i] = denominator_powers[deno_pos++]+1;
				else
				  powers[i] = -numerator_powers[num_pos++];
			      
			      if (selector.compatible(powers))
				{
				  solve(identities_procedure, powers);
				  if (_dumped) return;
				}
			    }
			  while (numerator_powers.next());
			}
		      else
			{
			  vector<int> powers(n_indices);
			  for (int i = 0; i < n_indices; ++i)
			    powers[i] = denominator_powers[i]+1;
			  
			  if (selector.compatible(powers))
			    {
			      solve(identities_procedure, powers);
			      if (_dumped) return;
			    }
			}
		    }
		  while (denominator_powers.next());
		}
	      while (sum.next());
	    }
	}
      while (denominator_position.next());
    }
}

/******************************************************************************
 *                                                                            *
 * solve_fixed_denominators                                                   *
 *                                                                            *
 ******************************************************************************/

void
IdentityGenerator::solve_fixed_denominators(int n_indices, 
					    int n_denominators, 
					    int max_sum_denominator_powers, 
					    int max_sum_numerator_powers,
					    const string& identities_procedure,
					    PowerSelector& selector)
{
  if (n_denominators == n_indices) max_sum_numerator_powers = 0;

  int max_bound = max_sum_denominator_powers+max_sum_numerator_powers;

  for (int bound = 0; bound <= max_bound; ++bound)
    {
      Partition sum(2, bound);

      do
	{
	  if (sum[0] > max_sum_denominator_powers ||
	      sum[1] > max_sum_numerator_powers) continue;

	  if (generated(identities_procedure, sum[0], sum[1]))
	    {
	      cout << identities_procedure << " " << sum[0] << " " << sum[1]
		   << " have already been generated\n";
	      continue;
	    }

          // partition powers across denominators
	  Partition denominator_powers(n_denominators, sum[0]);
	  // loop over all possible partitions
	  do
	    {
	      if (n_denominators != n_indices)
		{
		  Partition numerator_powers(n_indices-n_denominators, sum[1]);
		  
		  do
		    {
		      vector<int> powers(n_indices);
		      for (int i = 0; i < n_indices; ++i)
			if (i < n_denominators)
			  powers[i] = denominator_powers[i]+1;
			else
			  powers[i] = -numerator_powers[i-n_denominators];
		      
		      if (selector.compatible(powers))
			{
			  solve(identities_procedure, powers);
			  if (_dumped) return;
			}
		    }
		  while (numerator_powers.next());
		}
	      else
		{
		  // vector powers holds all powers of denominators
		  vector<int> powers(n_indices);
		  for (int i = 0; i < n_indices; ++i)
		    powers[i] = denominator_powers[i]+1;
		  
		  if (selector.compatible(powers))
		    {
		      solve(identities_procedure, powers);
		      if (_dumped) return;
		    }
		}
            //cout << denominator_powers.current();
	    }
	  while (denominator_powers.next());

	  confirm_generated(identities_procedure, sum[0], sum[1]);
	}
      while (sum.next());
    }
}

/******************************************************************************
 *                                                                            *
 * solve_fixed_sums                                                           *
 *                                                                            *
 ******************************************************************************/

void
IdentityGenerator::solve_fixed_sums(int n_indices, 
				    int n_denominators, 
				    int sum_denominator_powers, 
				    int sum_numerator_powers,
				    const string& identities_procedure,
				    PowerSelector& selector)
{
  if (generated(identities_procedure,
		sum_denominator_powers,
		sum_numerator_powers))
    {
      cout << identities_procedure << " " << sum_denominator_powers << " "
	   << sum_numerator_powers << " have already been generated\n";
      return;
    }
  
  Partition denominator_powers(n_denominators, sum_denominator_powers);
  
  do
    {
      if (n_denominators != n_indices)
	{
	  Partition numerator_powers(n_indices-n_denominators,
				     sum_numerator_powers);
	  
	  do
	    {
	      vector<int> powers(n_indices);
	      for (int i = 0; i < n_indices; ++i)
		if (i < n_denominators)
		  powers[i] = denominator_powers[i]+1;
		else
		  powers[i] = -numerator_powers[i-n_denominators];
	      
	      if (selector.compatible(powers))
		{
		  solve(identities_procedure, powers);
		  if (_dumped) return;
		}
	    }
	  while (numerator_powers.next());
	}
      else
	{
	  vector<int> powers(n_indices);
	  for (int i = 0; i < n_indices; ++i)
	    powers[i] = denominator_powers[i]+1;
	  
	  if (selector.compatible(powers))
	    {
	      solve(identities_procedure, powers);
	      if (_dumped) return;
	    }
	}
    }
  while (denominator_powers.next());

  confirm_generated(identities_procedure,
		    sum_denominator_powers,
		    sum_numerator_powers);
}

/******************************************************************************
 *                                                                            *
 * solve                                                                      *
 *                                                                            *
 ******************************************************************************/

void
IdentityGenerator::solve(const string& procedure, vector<int> powers)
{
  if (!_procedure.empty())
    {
      if (_procedure == procedure)
	_procedure.clear();
      else
	return;
    }

  if (!_powers.empty())
    {
      if (_powers == powers)
	_powers.clear();
      else
	return;
    }

  if (dump)
    {
      ofstream dump_file("IdSolverDump");
      
      dump_file << "procedure: " << procedure << "\n"
		<< "powers: " << powers
		<< "no. of identities: " << _n_identities << "\n";
      
      _integrals.write();

      _dumped = true;

      return;
    }

  if (_options & Verbose)
    {
      cout << "Solving around (";
      for (int i = 0; i < powers.size(); ++i)
	{
	  cout << powers[i];
	  if (i != powers.size()-1) cout << ",";
	  else cout << ")\n\n\t";
	}
      cout.flush();
    }
  
  // prepare FORM file with a call to symmetries or identities procedure
  ostringstream prefix;
  prefix << "." << getpid() << ".id";
  ofstream generator_file((prefix.str()+".frm").c_str());

  generator_file << "* " << _integrals.n_assigned_integrals() << " assigned\n* "
		 << _integrals.n_unassigned_integrals() << " unassigned\n* "
		 << _n_identities << " identities\n\n";

  generator_file << "#call " << procedure << "(";
  for (vector<int>::const_iterator n = powers.begin(); n != powers.end(); ++n)
    {
      generator_file << *n;
      if (n != powers.end()-1) generator_file << ",";
      else generator_file << ")\n";
    }
  generator_file.close();

  string command = "form -l ";
  if (_options & Incomplete) command += "-d INCOMPLETE ";
  system((command+prefix.str()+".frm > /dev/null").c_str());
  
  string current_identity;
  ifstream identities_file((prefix.str()+".log").c_str());

  if (!getline(identities_file, current_identity, '=') ||
      !getline(identities_file, current_identity, ';')) return;
  
  vector<Integral> updated;

  do
    {
      ++_n_identities;

      Expression modified_identity = _integrals.expression(current_identity);

      if (!_identifier.empty() && !modified_identity.null())
	{
	  Expression temp_identity;
	  vector<pair<Integral, Coefficient> > terms= modified_identity.terms();

	  for (vector<pair<Integral, Coefficient> >:: iterator t= terms.begin();
	       t != terms.end(); ++t)
	    if (t->first.identifier() == _identifier)
	      temp_identity.add(t->first, t->second);

	  modified_identity = temp_identity;
	}

      if (!_rules.empty()) modified_identity.replace(_rules);

      Integral i = _integrals.update(modified_identity);
      if (i.defined())
	{
	  updated.push_back(i);

	  if (_options & StoreIdentities)
	    {
	      Expression original_identity = 
		_integrals.expression(erase_whitespace(current_identity));

	      write_identity(i, original_identity);
	    }

	  if (_options & Verbose) cout << "+";
	}
      else
	{
	  if (_options & Verbose) cout << "-";
	}

      cout.flush();
    }
  while (getline(identities_file, current_identity, '=') &&
	 getline(identities_file, current_identity, ';'));

  identities_file.close();
  unlink((prefix.str()+".frm").c_str());
  unlink((prefix.str()+".log").c_str());

  if (_options & Verbose)
    {
      cout << "\n\n\t" << updated.size() << " new integral(s) found" << endl;
      
      if (!updated.empty())
	{
	  int line_count = 0;
	  for (int i = 0; i < updated.size(); ++i)
	    {
	      if (!line_count++) cout << "\n\t";
	      else if (line_count >= 2) line_count = 0;
	      
	      cout << updated[i] << "\t";
	      cout.flush();
	    }
	  
	  cout << "\n\n";
	}
      
      cout << "\t" << _integrals.n_assigned_integrals() << " assigned\n"
	   << "\t" << _integrals.n_unassigned_integrals() << " unassigned\n"
	   << "\t" << _n_identities << " identities\n";

      cout << endl;
    }
}

/******************************************************************************
 *                                                                            *
 * generated                                                                  *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * If the option IdentityGenerator::StoreIdentities is set and
 * solved_identifier() has been used, check whether the given combination
 * of an identities_procedure, sum_denominator_powers and sum_numerator_powers
 * has been completely generated. This can be specified with
 * confirm_generated().
 *
 */

bool
IdentityGenerator::generated(const string& identities_procedure,
			     int sum_denominator_powers,
			     int sum_numerator_powers)
{
  if (!(_options & StoreIdentities) || _identifier.empty()) return false;

  DB* db;

  if (_identities.find(_identifier) != _identities.end())
    db = _identities[_identifier];
  else
    {
      try
	{
	  string db_name = "id"+_identifier+".dat";

	  db = new DB(db_name.c_str(),DATABASE::OWRITER);
	}
      catch (DATABASE_ERROR e)
	{
	  if (e == DATABASE::EOPEN) return false;

	  cerr << "IdentityGenerator::generated: " << e << endl;
	  exit(1);
	}
      
      _identities[_identifier] = db;
    }

  try
    {
      int siz;
      int8* buf = db->get(_generated_key, -1, 0, -1, &siz);
      int8* pos = buf;
      int8* end = buf+siz;
      
      while (pos < end)
	{
	  string proc((char*) pos);
	  pos += proc.length()+1;
	  int d = *((int*) pos);
	  pos += sizeof(int);
	  int n = *((int*) pos);
	  pos += sizeof(int);
	  
	  if (proc == identities_procedure &&
	      d == sum_denominator_powers &&
	      n == sum_numerator_powers) return true;
	}
    }
  catch (DATABASE_ERROR e)
    {
      if (e == DATABASE::ENOITEM) return false;

      cerr << "IdentityGenerator::generated: " << e << endl;
      exit(1);
    }

  return false;
}

/******************************************************************************
 *                                                                            *
 * confirm_generated                                                          *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * If the option IdentityGenerator::StoreIdentities is set and
 * solved_identifier() has been used, store the given combination of an
 * identities_procedure, sum_denominator_powers and sum_numerator_powers as
 * generated in the appropriate database.
 *
 */

void
IdentityGenerator::confirm_generated(const string& identities_procedure,
			  int sum_denominator_powers,
			  int sum_numerator_powers)
{
  if (!(_options & StoreIdentities) || _identifier.empty()) return;

  DB* db;
  
  if (_identities.find(_identifier) != _identities.end())
    db = _identities[_identifier];
  else
    {
      try
	{
	  string db_name = "id"+_identifier+".dat";
	  db = new DB(db_name.c_str(),DATABASE::OWRITER|DATABASE::OCREAT);
	}
      catch (DATABASE_ERROR e)
	{
	  cerr << "IdentityGenerator::confirm_generated: " << e << endl;
	  exit(1);
	}
      
      _identities[_identifier] = db;
    }

  int siz = 0;
  int8* buf = NULL;

  try
    {
      buf = db->get(_generated_key, -1, 0, -1, &siz);
    }
  catch (DATABASE_ERROR e)
    {
      if (e != DATABASE::ENOITEM)
	{
	  cerr << "IdentityGenerator::confirm_generated: " << e << endl;
	  exit(1);
	}
    }

  const int proc_len = identities_procedure.length()+1;
  const int add_siz = proc_len+2*sizeof(int);
  int8* generated = new int8[siz+add_siz];
  memcpy(generated, buf, siz);

  int8* pos = generated+siz;
  strcpy(pos, identities_procedure.c_str());
  pos += proc_len;
  *((int *) pos) = sum_denominator_powers;
  pos += sizeof(int);
  *((int *) pos) = sum_numerator_powers;

  siz += add_siz;

  try
    {
      db->put(_generated_key,
	      -1,
	      generated, 
	      siz,
	      DATABASE::DOVER);
    }
  catch (DATABASE_ERROR e)
    {
      cerr << "IdentityGenerator::confirm_generated: " << e << endl;
      exit(1);
    }
}

/******************************************************************************
 *                                                                            *
 * read_identity                                                              *
 *                                                                            *
 ******************************************************************************/

pair<Expression, int>
IdentityGenerator::read_identity(const Integral& i)
{
  const string identifier = i.identifier();
  DB* db;

  if (_identities.find(identifier) != _identities.end())
    db = _identities[identifier];
  else
    {
      try
	{
	  db = new DB(("id"+identifier+".dat").c_str(),DATABASE::OWRITER);

	  _identities[identifier] = db;

	  int siz;
	  int8* buf = db->get(_setup_key, -1, 0, -1, &siz);
	  int opt = *((int*) buf);
	  int8* pos = buf+sizeof(int);
	  int8* end = buf+siz;

	  while (pos < end)
	    {
	      string id((char*) pos);
	      pos += id.length()+1;
	      int n = *((int*) pos);
	      pos += sizeof(int);
	      _integrals.set_n_denominators(id, n);
	    }
	  
	  free(buf);
	  
	  if (opt & IntegralMap::SolveNumerators)
	    _integrals.enable(IntegralMap::SolveNumerators);
	  else
	    _integrals.disable(IntegralMap::SolveNumerators);
	  
	  if (opt & IntegralMap::LaportaOrdering)
	    _integrals.enable(IntegralMap::LaportaOrdering);
	  else
	    _integrals.disable(IntegralMap::LaportaOrdering);
 	}
      catch (DATABASE_ERROR e)
	{
	  cerr << "IdentityGenerator::read_identity: "
	       << "id"+identifier+".dat " << e << endl;
	  exit(1);
	}
   }

  const vector<Power> pow = i.powers();

  int8* powers = new int8[pow.size()];
  int8* ptr = powers;
  for (vector<Power>::const_iterator p = pow.begin();
       p != pow.end(); ++p, ++ptr) *ptr = *p;

  Expression identity;
  int index;

  try
    {
      int identity_size;
      int8* identity_data = db->get(powers, pow.size(), 0, -1, &identity_size);
      identity = _integrals.expression(identity_data,identity_size-sizeof(int));
      index = *((int*) (identity_data+identity_size-sizeof(int)));
      free(identity_data);
    }
  catch (DATABASE_ERROR e)
    {
      if (e.code() != DATABASE::ENOITEM)
	{
	  cerr << "IdentityGenerator::read_identity: "
	       << "id"+identifier+".dat " << e << endl;
	  exit(1);
	}
    }

  delete[] powers;

  return make_pair(identity, index);
}

/******************************************************************************
 *                                                                            *
 * write_identity                                                             *
 *                                                                            *
 ******************************************************************************/

void
IdentityGenerator::write_identity(const Integral& i, const Expression& e)
{
  const string identifier = i.identifier();
  DB* db;

  if (_identities.find(identifier) != _identities.end())
    db = _identities[identifier];
  else
    {
      try
	{
	  string db_name = "id"+identifier+".dat";
	  db = new DB(db_name.c_str(),DATABASE::OWRITER|DATABASE::OCREAT);
	}
      catch (DATABASE_ERROR e)
	{
	  cerr << "IdentityGenerator::write_identity: " << e << endl;
	  exit(1);
	}
      
      _identities[identifier] = db;
    }

  const vector<Power> pow = i.powers();

  int8* powers = new int8[pow.size()];
  int8* ptr = powers;
  for (vector<Power>::const_iterator p = pow.begin();
       p != pow.end(); ++p, ++ptr) *ptr = *p;
  
  ResizableBuffer identity;
  int identity_size = e.write(identity);

  // append the index of the identity, which is the current _n_identities.

  identity.reserve(sizeof(int));
  *((int*) identity._end_of_data) = _n_identities;
  identity._end_of_data += sizeof(int);
  identity_size += sizeof(int);

  try
    {
      db->put(powers,
	      pow.size(),
	      identity._begin, 
	      identity_size, 
	      DATABASE::DOVER);
    }
  catch (DATABASE_ERROR e)
    {
      cerr << "IdentityGenerator::write_identity: " << e << endl;
      exit(1);
    }
  
  delete[] powers;
}

/******************************************************************************
 *                                                                            *
 * print_database                                                             *
 *                                                                            *
 ******************************************************************************/

void
IdentityGenerator::print_database(ostream& output, const string& identifier)
{
  try
    {
      DB db(("id"+identifier+".dat").c_str());
      
      int8* buf;
      int siz = -1;
      buf = db.get(_setup_key, -1, 0, -1, &siz);
      
      output << "Options:\n\n";
      
      int opt = *((int*) buf);
      
      if (opt & IntegralMap::SolveNumerators)
	output << "IntegralMap::SolveNumerators\n\n";
      if (opt & IntegralMap::LaportaOrdering)
	output << "IntegralMap::LaportaOrdering\n\n";

      output << '\n';

      output << "Number of denominators by prototype "
	     << "(for IntegralMap::LaportaOrdering):\n\n";
      
      int8* pos = buf+sizeof(int);
      int8* end = buf+siz;
      
      while (pos < end)
	{
	  string id((char*) pos);
	  pos += id.length()+1;
	  int n = *((int*) pos);
	  pos += sizeof(int);
	  output << id << " " << n << '\n';
	}
      
      output << "\n\n";

      free(buf);

      // the _generated_key might not be there

      output << "Confirmed generated:\n\n";
	  
      try
	{
	  siz = -1;
	  buf = db.get(_generated_key, -1, 0, -1, &siz);
	  
	  pos = buf;
	  end = buf+siz;
	  
	  while (pos < end)
	    {
	      string proc((char*) pos);
	      pos += proc.length()+1;
	      int d = *((int*) pos);
	      pos += sizeof(int);
	      int n = *((int*) pos);
	      pos += sizeof(int);
	      output << proc << " " << d << " " << n << '\n';
	    }

	  output << "\n";

	  free(buf);
	}
      catch (DATABASE_ERROR e)
	{
	  if (e.code() != DATABASE::ENOITEM)
	    {
	      cerr << "IdentityGenerator::print_database: " 
		   << "id"+identifier+".dat" << " " << e << endl;
	      return;
	    }
	}

      output << "\n";

      db.iterinit();
      
      output << "Identities:\n\n";

      for (;;)
	{
	  int key_size;
	  int8* key = db.iternext(&key_size);

	  if (strncmp(key, _setup_key, key_size) &&
	      strncmp(key, _generated_key, key_size))
	    {
	      int identity_size;
	      int8* identity_data= db.get(key, key_size, 0, -1, &identity_size);
	      Expression identity =
		_integrals.expression(identity_data,identity_size-sizeof(int));
	      int index = *((int*) (identity_data+identity_size-sizeof(int)));
	      free(identity_data);
	      
	      output << "id nr. " << index << " for " << identifier << "(";
	      for (int i = 0; i < key_size; ++i)
		{
		  if (i) output << ",";
		  output << static_cast<int>(key[i]);
		}
	      output << ") :\n\n" << identity << "\n\n\n";
	    }

	  free(key);
	}
    }
  catch (DATABASE_ERROR e)
    {
      if (e.code() != DATABASE::ENOITEM)
	{
	  cerr << "IdentityGenerator::print_database: " 
	       << "id"+identifier+".dat" << " " << e << endl;
	}
      return;
    }
}

/******************************************************************************
 *                                                                            *
 * sync_databases                                                             *
 *                                                                            *
 ******************************************************************************/

void
IdentityGenerator::sync_databases() const
{
  for (map<string, DB*>::const_iterator i = _identities.begin();
       i != _identities.end(); ++i)
    i->second->sync();
}
