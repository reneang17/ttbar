/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#ifndef PROTOTYPE_HPP
#define PROTOTYPE_HPP

#include <set>
#include <vector>
#include <string>
#include <utility>

#include "ScalarDiagram.hpp"
#include "Utilities.hpp"

using namespace std;

/******************************************************************************
 *                                                                            *
 * Prototype                                                                  *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * A prototype is a ScalarDiagram that is 1PI and has no self-energy insertions.
 *
 * The core of the class functionality is made of integral_edge_labelling() and
 * integral_compare(). The current implementation is divided into three cases:
 * tadpoles, propagators and multileg prototypes. The first two cases are
 * treated separately only because of backward compatibility in the case of
 * tadpoles.
 *
 */

class Prototype : public ScalarDiagram
{
public:

  explicit Prototype(int n_nodes);

  Prototype(ScalarDiagram d);

  virtual ~Prototype() {};

  virtual void
  insert_edge(int source_node, int target_node, const string& mass);

  bool
  has_scaleless_components() const;

  int
  normalize_momenta();

  vector<string>
  independent_momenta();

  vector<string>
  independent_external_momenta();

  vector<string>
  loop_momenta();

  vector<int>
  momentum_conservation_relation();

  /// number of independent scalar products with at least one loop momentum
  int
  n_scalars() const;

  /// first the scalar products expressible through the denominators, together
  /// with the substitutions, then the irreducible scalar products
  pair<vector<string>, vector<string> >
  scalar_product_remapping();
  
  vector<pair<int, int> > 
  integral_edge_labelling() const;

  int
  topological_compare(const Prototype& p) const;

  int
  scalar_compare(const Prototype& p) const;

  int
  integral_compare(const Prototype& p) const;

  virtual int
  compare(const Prototype& p) const;

private:

  /****************************************************************************
   *                                                                          *
   * Implementation for tadpoles                                              *
   *                                                                          *
   ****************************************************************************/

  /// descriptor of a normalized momentum associated with
  /// an edge. currently used for vaccum prototype labelling
  struct MomentumDescriptor
  {
    MomentumDescriptor();
    
    MomentumDescriptor(int n);
    
    int
    size() const;
    
    bool
    operator<(const MomentumDescriptor& p) const;
    
    bool
    operator==(const MomentumDescriptor& p) const;
    
    vector<int> _momentum;
    
    int         _edge;
    
    int         _dir;
  };

  /// generates the next combination of signs starting from ++...
  bool
  next_variation(vector<int>& signs) const;

  vector<MomentumDescriptor>
  minimize_momentum_distribution() const;

  void
  minimize_momentum_distribution(vector<MomentumDescriptor>& distribution,
				 vector<int>& positions,
				 int current,
				 int min) const;

  mutable vector<MomentumDescriptor>   _momentum_distribution;

  /****************************************************************************
   *                                                                          *
   * Implementation for propagators                                           *
   *                                                                          *
   ****************************************************************************/

  struct Propagator : vector<int>
  {
    Propagator(int size, int edge, int dir);

    int    _edge;
    
    int    _dir;
  };

  typedef vector<Propagator>::iterator PropagatorPtr;

  // the first number denotes the momentum, the second its direction
  struct Cell : vector<pair<int, int> >
  {
    /// by default a cell is assumed to be signed
    Cell();
    
    bool _signed;
  };

  void
  normalize_propagators(vector<Propagator>& sorted,
			vector<pair<int, int> >& labelling,
			const vector<Propagator>& original,
			const vector<Cell>& partition,
			const vector<string>& mass,
			vector<int> propagator_permutation,
			int n_remaining_propagators) const;

  mutable vector<Propagator>           _propagators;

  /****************************************************************************
   *                                                                          *
   * Implementation for multileg prototypes                                   *
   *                                                                          *
   ****************************************************************************/

  /// made for integral comparisons, perhaps in the end
  /// momentum and mass distributions should be used
  /// for this purpose...
  struct PrototypeComponent
  {
    PrototypeComponent(int n_nodes);
    
    PrototypeComponent(const PrototypeComponent& pc);

    ~PrototypeComponent();

    PrototypeComponent&
    operator=(const PrototypeComponent& pc);

    bool 
    operator<(const PrototypeComponent& pc) const;

    Prototype*  _p;
    
    vector<int> _edge;
    
    bool        _vacuum;
  };

  multiset<PrototypeComponent>
  prototype_components(const vector<int>& topology_component) const;

  mutable multiset<PrototypeComponent> _components;

private:

  /// the topology needs to be initialized with a node number
  Prototype();

  /// this is not implemented yet...
  virtual void erase_edge() {};
  
  bool
  validate() const;

private:

  int                                  _eliminated_momentum;
  
  bool                                 _normalized_momenta;

  mutable vector<pair<int, int> >      _integral_edge_labelling;
};

/******************************************************************************
 *                                                                            *
 * Interface of the Prototype class, other than methods and friends           *
 *                                                                            *
 ******************************************************************************/

inline
bool
operator<(const Prototype& p1, const Prototype& p2)
{
  return p1.compare(p2) < 0;
}

inline
int
compare(const Prototype& p1, const Prototype& p2)
{
  return p1.compare(p2);
}

inline
bool
isomorphic(const Prototype& p1, const Prototype& p2)
{
  return p1.compare(p2) == 0;
}

inline
ostream&
operator<<(ostream& output, const Prototype& p)
{
  p.print(output);
  return output;
}

/******************************************************************************
 *                                                                            *
 * Inlines of the Prototype class                                             *
 *                                                                            *
 ******************************************************************************/

inline
Prototype::Prototype(int n_nodes) :
  ScalarDiagram(n_nodes),
  _normalized_momenta(false)
{}

inline
Prototype::Prototype(ScalarDiagram d) :
  ScalarDiagram(d),
  _normalized_momenta(false)
{}

inline
int
Prototype::topological_compare(const Prototype& p) const
{
  return ScalarDiagram::compare(p);
}


inline
Prototype::Propagator::Propagator(int size, int edge, int dir) :
  vector<int>(size),
  _edge(edge),
  _dir(dir)
{}

inline
Prototype::Cell::Cell() : _signed(true)
{}

inline
Prototype::PrototypeComponent::PrototypeComponent(int n_nodes) :
  _p(new Prototype(n_nodes)),
  _vacuum(true)
{}

inline
Prototype::PrototypeComponent::PrototypeComponent(const PrototypeComponent& pc) :
  _p(new Prototype(*pc._p)),
  _edge(pc._edge),
  _vacuum(pc._vacuum)
{}

inline
Prototype::PrototypeComponent::~PrototypeComponent()
{
  delete _p;
}

inline
Prototype::PrototypeComponent&
Prototype::PrototypeComponent::operator=(const PrototypeComponent& pc)
{
  delete _p;
  _p = new Prototype(*pc._p);
  _edge = pc._edge;
  _vacuum = pc._vacuum;
  return *this;
}

inline
bool
Prototype::PrototypeComponent::operator<(const PrototypeComponent& pc) const
{
  return _p->scalar_compare(*pc._p) < 0;
}

inline
Prototype::MomentumDescriptor::MomentumDescriptor()
{}

inline
Prototype::MomentumDescriptor::MomentumDescriptor(int n) : _momentum(n)
{}

inline
int
Prototype::MomentumDescriptor::size() const
{
  int n = 0;
  for (int i = 0; i < _momentum.size(); ++i) n += abs(_momentum[i]);
  return n;
}

inline
bool
Prototype::MomentumDescriptor::operator<(const MomentumDescriptor& p) const
{
  if (size() != p.size()) return size() < p.size();
  return _momentum > p._momentum;
}

inline
bool
Prototype::MomentumDescriptor::operator==(const MomentumDescriptor& p) const
{
  return _momentum == p._momentum;
}

#endif
