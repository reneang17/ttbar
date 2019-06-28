/******************************************************************************
 *                                                                            *
 * Copyright (C) 2002 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

/******************************************************************************
 *                                                                            *
 * Tests of the Topology class functionality                                  *
 *                                                                            *
 ******************************************************************************/

#include <list>
#include <iostream>
#include <iterator>
#include <assert.h>
#include "DiaGen.hpp"

using namespace std;

int main()
{
  // current set of testing topologies
  
  Topology t0(7);

  t0.insert_edge(5,3,"p");
  t0.insert_edge(3,6,"k1");
  t0.insert_edge(3,1,"k2");
  t0.insert_edge(6,0,"k3");
  t0.insert_edge(0,4,"k4");
  t0.insert_edge(0,0,"k5");
  t0.insert_edge(1,4,"k6");
  t0.insert_edge(6,1,"k7");
  t0.insert_edge(4,2,"p");

  Topology t1(4);

  t1.insert_edge(0,1);
  t1.insert_edge(1,1);
  t1.insert_edge(2,3);
  t1.insert_edge(2,2);

  Topology t2(6);

  t2.insert_edge(0,1);
  t2.insert_edge(1,4);
  t2.insert_edge(1,5);
  t2.insert_edge(4,5);
  t2.insert_edge(4,2);
  t2.insert_edge(5,2);
  t2.insert_edge(2,3);

  Topology t3(7);

  t3.insert_edge(0,1);
  t3.insert_edge(1,4);
  t3.insert_edge(1,5);
  t3.insert_edge(4,5);
  t3.insert_edge(4,2);
  t3.insert_edge(6,2);
  t3.insert_edge(5,6);
  t3.insert_edge(6,6);
  t3.insert_edge(3,2);
  
  Topology t4(6);

  t4.insert_edge(2,0);
  t4.insert_edge(2,1);
  t4.insert_edge(2,3);
  t4.insert_edge(3,4);
  t4.insert_edge(3,5);
  t4.insert_edge(4,5);
  t4.insert_edge(4,5);

  Topology t5(6);

  t5.insert_edge(0,1);
  t5.insert_edge(1,2);
  t5.insert_edge(2,3);
  t5.insert_edge(1,4);
  t5.insert_edge(5,2);
  t5.insert_edge(4,5);
  t5.insert_edge(4,5);

  Topology t6(8);

  t6.insert_edge(3,4);
  t6.insert_edge(4,2);
  t6.insert_edge(0,5);
  t6.insert_edge(5,1);
  t6.insert_edge(4,6);
  t6.insert_edge(7,5);
  t6.insert_edge(6,7);
  t6.insert_edge(6,7);

  Topology t7(10);

  t7.insert_edge(0,5);
  t7.insert_edge(5,1);
  t7.insert_edge(5,7);
  t7.insert_edge(7,6);
  t7.insert_edge(7,6);
  t7.insert_edge(6,4);
  t7.insert_edge(4,2);
  t7.insert_edge(4,9);
  t7.insert_edge(9,8);
  t7.insert_edge(9,8);
  t7.insert_edge(8,3);

  Topology t8(4);

  t8.insert_edge(0,3);
  t8.insert_edge(0,3);
  t8.insert_edge(0,1);
  t8.insert_edge(2,3);
  t8.insert_edge(1,2);
  t8.insert_edge(1,2);

  Topology t9(10);

  t9.insert_edge(0,3);
  t9.insert_edge(1,3);
  t9.insert_edge(2,3);
  t9.insert_edge(8,3);
  t9.insert_edge(8,8);
  t9.insert_edge(4,9);
  t9.insert_edge(5,9);
  t9.insert_edge(6,9);
  t9.insert_edge(7,9);
  t9.insert_edge(7,7);

  Topology t10(7);

  t10.insert_edge(5,3);
  t10.insert_edge(3,6);
  t10.insert_edge(3,1);
  t10.insert_edge(6,1);
  t10.insert_edge(6,0);
  t10.insert_edge(0,4);
  t10.insert_edge(0,0);
  t10.insert_edge(1,4);
  t10.insert_edge(4,2);

  Topology t11(4);

  t11.insert_edge(0,1);
  t11.insert_edge(2,3);
  t11.insert_edge(1,2);
  t11.insert_edge(1,2);
  t11.insert_edge(1,2);
  t11.insert_edge(1,2);
  t11.insert_edge(1,2);
  t11.insert_edge(1,2);
  t11.insert_edge(1,2);
  t11.insert_edge(1,2);

  Topology t12(t4);

  t12.erase_edge(2);
  t12.erase_edge(3, 4);

  vector<Topology> topology_list;

  topology_list.push_back(t0);
  topology_list.push_back(t1);
  topology_list.push_back(t2);
  topology_list.push_back(t3);
  topology_list.push_back(t4);
  topology_list.push_back(t5);
  topology_list.push_back(t6);
  topology_list.push_back(t7);
  topology_list.push_back(t8);
  topology_list.push_back(t9);
  topology_list.push_back(t10);
  topology_list.push_back(t11);
  topology_list.push_back(t12);

  // tests

  cout << "--------------------------------------------------------" << endl;
  cout << "Testing for isomorphism" << endl << endl;

  int isomorphic_count = 0;
  for (vector<Topology>::const_iterator i = topology_list.begin();
       i != topology_list.end(); ++i)
    {
      for (vector<Topology>::const_iterator j = topology_list.begin();
	   j != i; ++j)
	{
	  if (isomorphic(*i, *j)) ++isomorphic_count;
	}
    }

  assert(isomorphic_count == 3);
  cout << "found 3 pairs of isomorphic topologies\n";
  
  cout << "--------------------------------------------------------\n";
  cout << "Testing outputting facilities\n\n";

  int count = 0;
  for (vector<Topology>::iterator i = topology_list.begin();
       i != topology_list.end(); ++i)
    {
      cout << "--------------------------------------------------------\n";
      cout << "topology nr. " << ++count << endl;
      cout << "--------------------------------------------------------\n";

      cout << "has " << i->n_external_nodes() << " external nodes\n\n";
      vector<int> external_nodes = i->external_nodes();
      copy(external_nodes.begin(), external_nodes.end(),
	   ostream_iterator<int>(cout, " "));

      cout << "\n\nwith external edges\n\n";
      pair<vector<int>, vector<int> > external_edges = i->external_edges();

      cout << "IN: ";
      copy(external_edges.first.begin(), external_edges.first.end(),
	   ostream_iterator<int>(cout, " "));

      cout << "\nOUT: ";
      copy(external_edges.second.begin(), external_edges.second.end(),
	   ostream_iterator<int>(cout, " "));

      cout << "\n\nhas " << i->n_cycles() << " cycles\n\n";

      cout << "canonical label\n\n";
      const vector<int> label = i->node_labelling();
      copy(label.begin(), label.end(), ostream_iterator<int>(cout, " "));

      cout << "\n\nsymmetry group\n\n";
      const vector<vector<int> > group = i->node_symmetry_group();
      if (group.size() > 10)
	cout << "the group has " << group.size() << " elements...\n";
      else
	for (vector<vector<int> >::const_iterator element = group.begin();
	     element != group.end(); ++element)
	  {
	    copy(element->begin(), element->end(),
		 ostream_iterator<int>(cout, " "));
	    cout << endl;
	  }

      cout << "\ninternal symmetry subgroup\n\n";
      const vector<vector<int> > subgroup= i->internal_node_symmetry_subgroup();
      if (subgroup.size() > 10)
	cout << "the group has " << subgroup.size() << " elements...\n";
      else
	for (vector<vector<int> >::const_iterator element = subgroup.begin();
	     element != subgroup.end(); ++element)
	  {
	    copy(element->begin(), element->end(),
		 ostream_iterator<int>(cout, " "));
	    cout << endl;
	  }

      cout << "\nindependent external node permutations\n\n";
      const vector<vector<int> >
	permutations = i->independent_external_node_permutations();
      for (vector<vector<int> >::const_iterator element = permutations.begin();
	   element != permutations.end(); ++element)
	{
	  copy(element->begin(), element->end(),
	       ostream_iterator<int>(cout, " "));
	  cout << endl;
	}
      cout << "\n";

      i->assign_momenta();

      cout << *i;
    }

  cout << "--------------------------------------------------------\n";
  cout << "Testing properties of the 1st topology:\n\n";
  assert(t0.is_connected() == true);
  cout << "is connected" << endl;
  assert(t0.is_one_particle_irreducible() == true);
  cout << "is one particle irreducible" << endl;
  assert(t0.has_loops() == true);
  cout << "has loops" << endl;
  assert(t0.has_tadpoles() == false);
  cout << "has no tadpoles" << endl;
  assert(t0.has_self_energies() == true);
  cout << "has self energies" << endl;
  assert(t0.is_on_shell() == true);
  cout << "is on shell" << endl << endl;

  cout << "--------------------------------------------------------\n";
  cout << "Testing properties of the 2nd topology:\n\n";

  assert(t1.is_connected() == false);
  cout << "is not connected" << endl;
  assert(t1.is_one_particle_irreducible() == false);
  cout << "is not one particle irreducible" << endl;
  assert(t1.has_loops() == true);
  cout << "has loops" << endl;
  assert(t1.has_tadpoles() == true);
  cout << "has tadpoles" << endl;
  assert(t1.has_self_energies() == false);
  cout << "has no self energies" << endl;
  assert(t1.is_on_shell() == true);
  cout << "is on shell" << endl << endl;

  cout << "--------------------------------------------------------\n";
  cout << "Testing properties of the 3rd topology:\n\n";
  assert(t2.is_connected() == true);
  cout << "is connected" << endl;
  assert(t2.is_one_particle_irreducible() == true);
  cout << "is one particle irreducible" << endl;
  assert(t2.has_loops() == false);
  cout << "has no loops" << endl;
  assert(t2.has_tadpoles() == false);
  cout << "has no tadpoles" << endl;
  assert(t2.has_self_energies() == false);
  cout << "has no self energies" << endl;
  assert(t2.is_on_shell() == true);
  cout << "is on shell" << endl << endl;

  cout << "--------------------------------------------------------\n";
  cout << "Testing properties of the 4th topology:\n\n";
  assert(t3.is_connected() == true);
  cout << "is connected" << endl;
  assert(t3.is_one_particle_irreducible() == true);
  cout << "is one particle irreducible" << endl;
  assert(t3.has_loops() == true);
  cout << "has loops" << endl;
  assert(t3.has_tadpoles() == false);
  cout << "has no tadpoles" << endl;
  assert(t3.has_self_energies() == true);
  cout << "has self energies" << endl;
  assert(t3.is_on_shell() == true);
  cout << "is on shell" << endl << endl;

  cout << "--------------------------------------------------------\n";
  cout << "Testing properties of the 5th topology:\n\n";
  assert(t4.is_connected() == true);
  cout << "is connected" << endl;
  assert(t4.is_one_particle_irreducible() == false);
  cout << "is not one particle irreducible" << endl;
  assert(t4.has_loops() == false);
  cout << "has no loops" << endl;
  assert(t4.has_tadpoles() == true);
  cout << "has tadpoles" << endl;
  assert(t4.has_self_energies() == true);
  cout << "has self energies" << endl;
  assert(t4.is_on_shell() == true);
  cout << "is on shell" << endl << endl;

  cout << "--------------------------------------------------------\n";
  cout << "Testing properties of the 6th topology:\n\n";
  assert(t5.is_connected() == true);
  cout << "is connected" << endl;
  assert(t5.is_one_particle_irreducible() == true);
  cout << "is one particle irreducible" << endl;
  assert(t5.has_loops() == false);
  cout << "has no loops" << endl;
  assert(t5.has_tadpoles() == false);
  cout << "has no tadpoles" << endl;
  assert(t5.has_self_energies() == true);
  cout << "has self energies" << endl;
  assert(t5.is_on_shell() == true);
  cout << "is on shell" << endl << endl;

  cout << "--------------------------------------------------------\n";
  cout << "Testing properties of the 7th topology:\n\n";
  assert(t6.is_connected() == true);
  cout << "is connected" << endl;
  assert(t6.is_one_particle_irreducible() == false);
  cout << "is not one particle irreducible" << endl;
  assert(t6.has_loops() == false);
  cout << "has no loops" << endl;
  assert(t6.has_tadpoles() == false);
  cout << "has no tadpoles" << endl;
  assert(t6.has_self_energies() == true);
  cout << "has self energies" << endl;
  assert(t6.is_on_shell() == true);
  cout << "is on shell" << endl << endl;

  cout << "--------------------------------------------------------\n";
  cout << "Testing properties of the 8th topology:\n\n";
  assert(t7.is_connected() == true);
  cout << "is connected" << endl;
  assert(t7.is_one_particle_irreducible() == false);
  cout << "is not one particle irreducible" << endl;
  assert(t7.has_loops() == false);
  cout << "has no loops" << endl;
  assert(t7.has_tadpoles() == false);
  cout << "has no tadpoles" << endl;
  assert(t7.has_self_energies() == true);
  cout << "has self energies" << endl;
  assert(t7.is_on_shell() == false);
  cout << "is not on shell" << endl << endl;

  cout << "--------------------------------------------------------\n";
  cout << "Testing properties of the 9th topology:\n\n";
  assert(t8.is_connected() == true);
  cout << "is connected" << endl;
  assert(t8.is_one_particle_irreducible() == true);
  cout << "is one particle irreducible" << endl;
  assert(t8.has_loops() == false);
  cout << "has no loops" << endl;
  assert(t8.has_tadpoles() == false);
  cout << "has no tadpoles" << endl;
  assert(t8.has_self_energies() == true);
  cout << "has self energies" << endl;
  assert(t8.is_on_shell() == true);
  cout << "is on shell" << endl << endl;

  cout << "--------------------------------------------------------\n";
  cout << "Testing properties of the 10th topology:\n\n";
  assert(t9.is_connected() == false);
  cout << "is not connected" << endl;
  assert(t9.is_one_particle_irreducible() == false);
  cout << "is not one particle irreducible" << endl;
  assert(t9.has_loops() == true);
  cout << "has loops" << endl;
  assert(t9.has_tadpoles() == true);
  cout << "has tadpoles" << endl;
  assert(t9.has_self_energies() == false);
  cout << "has no self energies" << endl;
  assert(t9.is_on_shell() == true);
  cout << "is on shell" << endl << endl;

  cout << "--------------------------------------------------------\n";
  cout << "Testing properties of the 11th topology:\n\n";
  assert(t10.is_connected() == true);
  cout << "is connected" << endl;
  assert(t10.is_one_particle_irreducible() == true);
  cout << "is one particle irreducible" << endl;
  assert(t10.has_loops() == true);
  cout << "has loops" << endl;
  assert(t10.has_tadpoles() == false);
  cout << "has no tadpoles" << endl;
  assert(t10.has_self_energies() == true);
  cout << "has self energies" << endl;
  assert(t10.is_on_shell() == true);
  cout << "is on shell" << endl << endl;

  cout << "--------------------------------------------------------\n";
  cout << "Testing properties of the 12th topology:\n\n";
  assert(t11.is_connected() == true);
  cout << "is connected" << endl;
  assert(t11.is_one_particle_irreducible() == true);
  cout << "is one particle irreducible" << endl;
  assert(t11.has_loops() == false);
  cout << "has no loops" << endl;
  assert(t11.has_tadpoles() == false);
  cout << "has no tadpoles" << endl;
  assert(t11.has_self_energies() == false);
  cout << "has no self energies" << endl;
  assert(t11.is_on_shell() == true);
  cout << "is on shell" << endl << endl;

  cout << "--------------------------------------------------------\n";
  cout << "Testing properties of the 13th topology:\n\n";
  assert(t12.is_connected() == false);
  cout << "is not connected" << endl;
  assert(t12.is_one_particle_irreducible() == false);
  cout << "is not one particle irreducible" << endl;
  assert(t12.has_loops() == false);
  cout << "has no loops" << endl;
  assert(t12.has_tadpoles() == true);
  cout << "has tadpoles" << endl;
  assert(t12.has_self_energies() == true);
  cout << "has self energies" << endl;
  assert(t12.is_on_shell() == true);
  cout << "is on shell" << endl << endl;

  cout << "All of the tests have been successful" << endl;
}
