/******************************************************************************
 *                                                                            *
 * Copyright (C) 2002 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

/******************************************************************************
 *                                                                            *
 * Tests of the TopologyGenerator class functionality                         *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * There are two untested generation options
 *
 * - NoLoops because there is no independent source of diagrams with an
 *   equivalent of this option. However, the option is very simple and is tested
 *   independently in topology_test.
 *
 * - NoSelfEnergies because there is disagreement with QGRAF, and FeynArts
 *   provides something completely different under a similar name. The
 *   disagreement with QGRAF is probably a bug in QGRAF, since it classifies
 *
 *                             _    _
 *                            |_|  |_|
 *                              \  /  
 *                               \/
 *                          ------------
 *
 *   as having a self-energy insertion.
 *
 */

#include <fstream>
#include <sstream>
#include <iterator>
#include "DiaGen.hpp"

using namespace std;

// simple topology counting. the calls to Topology methods are intended to
// test the overall performance of all operations needed in diagram generation.

int count_topologies(TopologyGenerator& generator)
{
  int count = 0;
  while (generator.next_topology())
    {
      Topology t = generator.current_topology();
      t.internal_node_symmetry_subgroup();
      t.independent_external_node_permutations();
      t.assign_momenta();

      ++count;
    }

  return count;
}

// contains all tests

int main()
{
  // Testing generation with output

  cout << "Testing topology generation with output, on the example of two loop"
       << endl << "1PI irreducible boxes" << endl << endl;

  TopologyGenerator generator(4, 2);
  generator.enable(TopologyGenerator::OneParticleIrreducible);
#if 0  
  int count = 0;
  while (generator.next_topology())
    {
      cout << "-------------------- Topology " << ++count
	   << " --------------------" << endl << endl;

      Topology t = generator.current_topology();

      t.assign_momenta();
      cout << t;

      ostringstream file_name;
      file_name << "top" << count << ".ps";

      t.postscript_print(file_name.str());
    }
#endif
  // Testing generation by count

  int n_generated_topologies = 0;
  int n_failed_tests = 0;
  
  const int n_options = 4;
  const TopologyGenerator::Option opt[n_options-1] =
  {TopologyGenerator::OneParticleIrreducible,
   TopologyGenerator::NoTadpoles,
   TopologyGenerator::OnShell
  };

  const char* opt_name[n_options] =
  {"connected (this is the default)",
   "one particle irreducible",
   "no tadpoles",
   "on-shell"
  };
  
  // fixed partition tests
  
  const int n_partitions = 9;
  const int node_count_triple[n_partitions] =
  {0, 2, 4, 6,
   0, 2, 4, 6, 8};
  const int node_count_quadruple[n_partitions] =
  {3, 2, 1, 0,
   4, 3, 2, 1, 0};

  // these numbers were generated with QGRAF

  int topology_count_fixed[n_partitions*n_options] =
  {8, 5, 8, 5,
   72, 23, 32, 52,
   111, 22, 31, 74,
   49, 9, 12, 31,
   30, 17, 30, 17,
   431, 134, 197, 292,
   1229, 259, 370, 795,
   1112, 171, 242, 678,
   338, 46, 64, 197};

  cout << "Testing topology generation with specified node partition" << endl
       << endl << "The following numbers are topology counts for a three and "
       << "four loop propagator" << endl;

  for (int i = 0; i < n_options; ++i)
    {
      cout << endl << "setting option: " << opt_name[i] << endl << endl;

      for (int j = 0; j < n_partitions; ++j)
	{
	  vector<int> node_count(4);
	  node_count[0] = 2;
	  node_count[2] = node_count_triple[j];
	  node_count[3] = node_count_quadruple[j];
	  
	  TopologyGenerator generator(node_count);
	  if (i > 0) generator.enable(opt[i-1]);
	  int count = count_topologies(generator);
	  n_generated_topologies += count;
	  
	  cout << "node partition ";
	  copy(node_count.begin(), node_count.end(),
	       ostream_iterator<int>(cout, " "));
	  cout << "--> generated topologies " << count;

	  if (count != topology_count_fixed[j*n_options+i])
	    {
	      cout << " --> test failed, should be "
		   << topology_count_fixed[j*n_options+i];
	      ++n_failed_tests;
	    }
	  cout << endl;
	}
    }

  // variable partition tests
  
  cout << endl << "Testing topology generation with specified number of "
       << " loops and legs" << endl;

  const int n_green_functions = 7;
  const int n_legs[n_green_functions] = {6, 8, 2, 3, 3, 4, 4};
  const int n_loops[n_green_functions] = {0, 0, 3, 2, 3, 2, 3};

  // these numbers were generated with QGRAF

  const int topology_count_variable[n_green_functions*n_options] =
  {5, 0, 5, 5,
   19, 0, 19, 19,
   240, 59, 83, 162,
   70, 13, 35, 23,
   1014, 158, 413, 303,
   245, 29, 139, 121,
   4367, 464, 2005, 1976};
  
  for (int i = 0; i < n_options; ++i)
    {
      cout << endl << "setting option: " << opt_name[i] << endl << endl;

      for (int j = 0; j < n_green_functions; ++j)
	{
	  TopologyGenerator generator(n_legs[j], n_loops[j]);
	  if (i > 0) generator.enable(opt[i-1]);
	  int count = count_topologies(generator);
	  n_generated_topologies += count;
	  
	  cout << n_legs[j] << " legs " << n_loops[j] << " loops ";
	  cout << "--> generated topologies " << count;

	  if (count != topology_count_variable[j*n_options+i])
	    {
	      cout << " --> test failed, should be "
		   << topology_count_variable[j*n_options+i];
	      ++n_failed_tests;
	    }
	  cout << endl;
	}
    }  

  cout << endl << "Total number of generated topologies: "
       << n_generated_topologies << endl;

  if (n_failed_tests == 0)
    {
      cout << "All tests were successful" << endl;
    }
  else
    {
      cout << "Number of failed tests: " << n_failed_tests << endl;
    }
}
