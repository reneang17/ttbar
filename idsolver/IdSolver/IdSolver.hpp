/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#ifndef IDSOLVER_HPP
#define IDSOLVER_HPP

#include <set>
#include <map>
#include <vector>
#include <string>
#include <cstring>
#include <sstream>
#include <fstream>
#include <iostream>
#include <dirent.h>

#ifdef GMP
#include <gmpxx.h>
#endif

#ifdef DEBUG
#include "Debug.hpp"
#endif

#include "DiaGen.hpp"
#include "Utilities.hpp"

using namespace std;

/******************************************************************************
 *                                                                            *
 * DB                                                                         *
 *                                                                            *
 ******************************************************************************/

#ifdef LARGE_DATABASES

#include <xcuria.h>
#define DATABASE Curia
#define DATABASE_ERROR Curia_error
using qdbm::Curia;
using qdbm::Curia_error;

#else

#include <xdepot.h>
#define DATABASE Depot
#define DATABASE_ERROR Depot_error
using qdbm::Depot;
using qdbm::Depot_error;

#endif

/**
 *
 * The database structure for integral and identity storage. Depending on the
 * preprocessor switch LARGE_DATABASES it will either be implemented as QDBM
 * Curia or Depot. In the former case, DB automatically resizes before the
 * initial maximal size of Curia would be exceeded. Because resizing requires
 * the database to be closed, the implementation cannot be done via inheritance.
 *
 */

class DB
{
public:

  DB(const char* name, int omode = DATABASE::OREADER) throw(DATABASE_ERROR);

  virtual ~DB() throw();

  virtual void 
  put(const char* kbuf,
      int ksiz,
      const char* vbuf,
      int vsiz,
      int dmode = DATABASE::DOVER) throw (DATABASE_ERROR);

  virtual char*
  get(const char* kbuf,
      int ksiz,
      int start = 0,
      int max = -1,
      int* sp = 0) throw (DATABASE_ERROR);

  virtual void 
  iterinit() throw (DATABASE_ERROR);

  virtual char*
  iternext(int* sp = 0) throw (DATABASE_ERROR);

  virtual void
  sync() throw (DATABASE_ERROR);

private:

  DATABASE* _db;

  double    _max_size;
};

/******************************************************************************
 *                                                                            *
 * ResizableBuffer                                                            *
 *                                                                            *
 ******************************************************************************/

/// single byte type, defined mostly for use by ResizableBuffer
typedef char int8;

/**
 *
 * Utility provided for the buffer writing routines of Integral, Coefficient and
 * Expression. The structure provides space, where the user has free RW access.
 * If there is not enough space, a call to reserve() performs all the necessary
 * bookkeeping. Of course, pointers inside the buffer may become invalidated and
 * the user should use the distance from _begin instead. The user needs also
 * to keep the _end_of_data up to date.
 *
 */

struct ResizableBuffer
{
  int8* _begin;
  
  int8* _end_of_data;

  int8* _end_of_storage;

  static const int buffer_size = 8192;

  ResizableBuffer();
  
  ResizableBuffer(const ResizableBuffer& buffer);

  ~ResizableBuffer();

  ResizableBuffer&
  operator=(const ResizableBuffer& buffer);

  /// the size of the data
  int
  size() const;

  /// the total size of the buffer
  int
  capacity() const;

  /// the size of the remaining space after the data
  int
  free() const;

  void
  reserve(int additional_size);
};

/******************************************************************************
 *                                                                            *
 * Implementation of ResizableBuffer                                          *
 *                                                                            *
 ******************************************************************************/

inline
ResizableBuffer::ResizableBuffer() : 
  _begin(new int8[buffer_size]),
  _end_of_data(_begin),
  _end_of_storage(_begin+buffer_size)
{}

inline
ResizableBuffer::~ResizableBuffer()
{
  delete[] _begin;
}

inline
int
ResizableBuffer::size() const
{
  return _end_of_data-_begin;
}

inline
int
ResizableBuffer::capacity() const
{
  return _end_of_storage-_begin;
}

inline
int
ResizableBuffer::free() const
{
  return _end_of_storage-_end_of_data;
}

/******************************************************************************
 *                                                                            *
 * IntegralMap                                                                *
 *                                                                            *
 ******************************************************************************/

/// Powers of integral numerators and denominators are bound to be in the
/// -127,...,127 range. Changing this typedef may provide a larger range, but
/// would invalidate any secondary storage data.
typedef char Power;

class Integral;

class Expression;

/**
 *
 * Storage for the system of integrals. It is tightly associated with the
 * Integral and Expression classes, since neither the actual Integral(s) 
 * nor the Expression(s) can be constructed without an IntegralMap.
 *
 */

class IntegralMap
{
public:

  enum {
    /// if set, masters will have dots, otherwise irreducible numerators (def 1)
    SolveNumerators = 0,

    /// if set, masters are chosen to have dots on the last line (def 0)
    LaportaOrdering = 2
  };

public:

  /// the database file names are <prototype_identifier>.<database_suffix>
  IntegralMap(const string& database_suffix = ".dat");

  ~IntegralMap();

  void
  enable(int option);
    
  void
  disable(int option);

  int
  options() const;
    
  void
  read(istream& input);

  Integral
  integral(const string& i);

  /// The input format is explained in Integral::write()
  Integral
  integral(const int8* buffer, int size);

  Expression
  expression(const string& expr);

  /// The input format is explained in Expression::write()
  Expression
  expression(const int8* buffer, int size);

  Integral
  update(Expression identity);

  void
  set_n_denominators(const string& identifier, int n);

  int
  get_n_denominators(const string& identifier) const;

  int
  n_integrals() const;

  int
  n_assigned_integrals() const;

  int
  n_unassigned_integrals() const;

  vector<string>
  identifiers() const;

  void
  init_iterator();

  /// see init_iterator()
  bool
  next_integral();

  /// see init_iterator()
  Integral
  current_integral();

  void
  delete_unsolved(int max_sum_denominator_powers,
		  int max_sum_numerator_powers,
		  const string& identifier = "");
  
  void
  write(const string& identifier = "");

  void
  print(ostream& output, const string& identifier = "") const;

  void
  print(ostream& output,
	int max_sum_denominator_powers,
	int max_sum_numerator_powers,
	const string& identifier = "") const;
  
  void
  print_masters(ostream& output,
		int max_sum_denominator_powers,
		int max_sum_numerator_powers,
		const string& identifier = "") const;

  void
  print_database(ostream& output, const string& identifier);

  void
  print_database(ostream& output,
		 int max_sum_denominator_powers,
		 int max_sum_numerator_powers,
		 const string& identifier);
  
  void
  sync_databases() const;

  void
  dump(ostream& output) const;

private:

  /// copying is not implemented currently and should never be needed
  IntegralMap(const IntegralMap&);
  
  IntegralMap&
  operator=(const IntegralMap&);

private:
  
  struct IntegralPowers : vector<Power>
  {
    int
    n_denominators() const;
    
    int
    sum_denominator_powers() const;
    
    int
    sum_numerator_powers() const;

    void
    print(ostream& output) const;
  };

  friend
  ostream&
  operator<<(ostream& output, const IntegralPowers& powers);

  struct IntegralEntry;

  typedef map<IntegralPowers, IntegralEntry> IntegralStorage;

  struct IntegralPtr : IntegralStorage::iterator
  {
    IntegralPtr();

    IntegralPtr(IntegralStorage::iterator i);

    const IntegralPowers&
    powers() const;

    IntegralEntry&
    entry();

    const IntegralEntry&
    entry() const;
  };

  struct IntegralConstPtr : IntegralStorage::const_iterator
  {
    IntegralConstPtr();

    IntegralConstPtr(IntegralStorage::const_iterator i);

    const IntegralPowers&
    powers() const;

    const IntegralEntry&
    entry() const;
  };

  struct IdentifierEntry
  {
    /// the only way to keep track in which IntegralMap we are
    IntegralMap&                   _integral_map;

    IntegralStorage                _integrals;

    /// see set_n_denominators
    int                            _n_denominators;

    /// the database of integrals. open automatically if exists, otherwise
    /// created upon a call to write().
    DB*                            _db;

    IdentifierEntry(IntegralMap& integral_map);

    ~IdentifierEntry();

    vector<IntegralConstPtr>
    masters(int max_sum_denominator_powers, int max_sum_numerator_powers) const;

    vector<IntegralPtr>
    masters(int max_sum_denominator_powers, int max_sum_numerator_powers);
  };

  /**
   *
   * Integral entries are grouped according to their identifiers.
   * This allows for storage management a la integral tables, as well as for
   * separated caches. It also fits the scheme in which the identities are
   * actually solved, i.e. prototype by prototype.
   *
   */

  typedef map<string, IdentifierEntry> IdentifierStorage;

  struct IdentifierPtr : IdentifierStorage::iterator
  {
    IdentifierPtr();
    
    IdentifierPtr(IdentifierStorage::iterator i);

    const string&
    str() const;

    IdentifierEntry&
    entry();

    const IdentifierEntry&
    entry() const;
  };

  struct IdentifierConstPtr : IdentifierStorage::const_iterator
  {
    IdentifierConstPtr();

    IdentifierConstPtr(IdentifierStorage::const_iterator i);

    const string&
    str() const;

    const IdentifierEntry&
    entry() const;
  };

  /**
   *
   * The IntegralEntry provides, besides the value of the integral and
   * a handle to the identifier, a reference counter of specific behaviour,
   * see description of Integral.
   *
   */

  struct IntegralEntry
  {
    IdentifierPtr                  _identifier;

    /// representation through pointer, because of the dependencies between
    /// the classes. At some point there would have to be a pointer...
    mutable Expression* _value;

    mutable int                    _ref_count;

    bool                           _stored;

    IntegralEntry(IdentifierPtr i);

    IntegralEntry(const IntegralEntry& i);

    ~IntegralEntry();

    IntegralEntry&
    operator=(const IntegralEntry& i);

    void
    assign(const Expression& expr);
    
    bool
    assigned() const;
    
    Expression
    value() const;

    /// this const here is needed because of the implementation of
    /// Expression::simplify, where integrals are in a map and therefore const
    bool
    simplify_value() const;

    void
    write(DB* db, const vector<Power>& powers) const;
  };

private:

  int                              _options;

  string                           _database_suffix;

  int                              _n_assigned_integrals;

  int                              _n_unassigned_integrals;

  IdentifierStorage                _identifiers;

  pair<IdentifierPtr, IntegralPtr> _current_integral;

  friend class Integral;
};

/******************************************************************************
 *                                                                            *
 * Implementation of IntegralMap                                              *
 *                                                                            *
 ******************************************************************************/

inline
void
IntegralMap::enable(int option)
{
  _options |= option;
}

inline
void
IntegralMap::disable(int option)
{
  _options &= ~option;
}

inline
int
IntegralMap::options() const
{
  return _options;
}

inline
int
IntegralMap::n_integrals() const
{
  return _n_assigned_integrals+_n_unassigned_integrals;
}

inline
int
IntegralMap::n_assigned_integrals() const
{
  return _n_assigned_integrals;
}
 
inline
int
IntegralMap::n_unassigned_integrals() const
{
  return _n_unassigned_integrals;
}

inline
IntegralMap::IntegralPtr::IntegralPtr()
{}

inline
IntegralMap::IntegralPtr::IntegralPtr(IntegralStorage::iterator i) :
  IntegralStorage::iterator(i)
{}

inline
const IntegralMap::IntegralPowers&
IntegralMap::IntegralPtr::powers() const
{
  return (*this)->first;
}

inline
IntegralMap::IntegralEntry&
IntegralMap::IntegralPtr::entry()
{
  return (*this)->second;
}

inline
const IntegralMap::IntegralEntry&
IntegralMap::IntegralPtr::entry() const
{
  return (*this)->second;
}

inline
IntegralMap::IntegralConstPtr::IntegralConstPtr()
{}

inline
IntegralMap::IntegralConstPtr::IntegralConstPtr(IntegralStorage::const_iterator i) :
  IntegralStorage::const_iterator(i)
{}

inline
const IntegralMap::IntegralPowers&
IntegralMap::IntegralConstPtr::powers() const
{
  return (*this)->first;
}

inline
const IntegralMap::IntegralEntry&
IntegralMap::IntegralConstPtr::entry() const
{
  return (*this)->second;
}

inline
IntegralMap::IdentifierPtr::IdentifierPtr()
{}

inline
IntegralMap::IdentifierPtr::IdentifierPtr(IdentifierStorage::iterator i) :
  IdentifierStorage::iterator(i)
{}

inline
const string&
IntegralMap::IdentifierPtr::str() const
{
  return (*this)->first;
}

inline
IntegralMap::IdentifierEntry&
IntegralMap::IdentifierPtr::entry()
{
  return (*this)->second;
}

inline
const IntegralMap::IdentifierEntry&
IntegralMap::IdentifierPtr::entry() const
{
  return (*this)->second;
}

inline
IntegralMap::IdentifierConstPtr::IdentifierConstPtr(IdentifierStorage::const_iterator i) :
  IdentifierStorage::const_iterator(i)
{}

inline
IntegralMap::IdentifierConstPtr::IdentifierConstPtr()
{}

inline
const string&
IntegralMap::IdentifierConstPtr::str() const
{
  return (*this)->first;
}

inline
const IntegralMap::IdentifierEntry&
IntegralMap::IdentifierConstPtr::entry() const
{
  return (*this)->second;
}

inline
ostream&
operator<<(ostream& output, const IntegralMap::IntegralPowers& powers)
{
  powers.print(output);
  return output;
}

inline
ostream&
operator<<(ostream& output, const IntegralMap& integrals)
{
  integrals.print(output);
  return output;
}

/******************************************************************************
 *                                                                            *
 * Integral                                                                   *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * An integral is just an identifier string and a list of powers, with positive
 * powers representing denominators and non-positive numerators. This
 * interpretation of powers is only needed for the counting methods, like
 * n_denominators(), and for the lexicographic ordering less_than().
 *
 * Integral(s) are just pointers inside IntegralMap. This is the most space
 * conserving way of representing integrals inside expressions. It also
 * enables to relegate all of the storage management to a completely opaque
 * IntegralMap, so that the user does not have to care about where the values
 * of the integrals really are. The management of the actual objects is done
 * with reference counters, with the difference that when a counter goes to 0,
 * the actual object is not destroyed, because we want to keep the solutions of
 * identities inside IntegralMap. In fact, only integrals on secondary storage
 * will get detroyed, since their values are already in the database. This
 * scheme has the strange consequence that when an integral is assigned, then
 * destroyed and then created again with the same parameters it cannot be
 * reassigned. This is, however, consistent with the behaviour of integrals on
 * secondary storage. The main advantage of the scheme is that undefined
 * integrals do not get constantly queried in the database.
 *
 */

class Integral
{
public:

  /// leaves you with an undefined integral. the only meaningful construction is
  /// through IntegralMap
  Integral();

  Integral(const Integral& i);

  ~Integral();

  Integral&
  operator=(const Integral& i);

  string
  identifier() const;

  vector<Power>
  powers() const;

  int
  n_denominators() const;

  int
  sum_denominator_powers() const;

  int
  sum_numerator_powers() const;

  /// only meaningful for integrals from the same IntegralMap
  bool
  operator==(const Integral& i) const;

  /// only meaningful for integrals from the same IntegralMap
  bool
  operator!=(const Integral& i) const;

  bool
  operator<(const Integral& i) const;

  /// the behaviour of this comparison function is defined by the IntegralMap
  bool
  less_than(const Integral& i) const;

  void
  assign(const Expression& expr);

  bool
  defined() const;
  
  bool
  assigned() const;

  Expression
  value() const;

  bool
  simplify_value() const;

  int
  write(ResizableBuffer& buffer) const;

  void
  print(ostream& output) const;

private:

  /// to be accessed only by IntegralMap
  Integral(IntegralMap::IntegralPtr i);

  // any integral that points to this map is undefined by default
  static IntegralMap::IntegralStorage _default;

private:

  IntegralMap::IntegralPtr _integral;

  friend class IntegralMap;
};

/******************************************************************************
 *                                                                            *
 * Implementation of Integral                                                 *
 *                                                                            *
 ******************************************************************************/

inline
Integral::Integral() : _integral(_default.begin())
{}

inline
Integral::Integral(const Integral& i) : 
  _integral(i._integral)
{
  if (defined()) ++_integral.entry()._ref_count;
}

inline
Integral::Integral(IntegralMap::IntegralPtr i) : 
  _integral(i)
{
  if (defined()) ++_integral.entry()._ref_count;
}

inline
string
Integral::identifier() const
{
  if (defined()) return _integral.entry()._identifier.str();
  else return string();
}

inline
vector<Power>
Integral::powers() const
{
  if (defined()) return _integral.powers();
  else return vector<Power>();
}

inline
int
Integral::n_denominators() const
{
  if (defined()) return _integral.powers().n_denominators();
  else return 0;
}

inline
int
Integral::sum_denominator_powers() const
{
  if (defined()) return _integral.powers().sum_denominator_powers();
  else return 0;
}

inline
int
Integral::sum_numerator_powers() const
{
  if (defined()) return _integral.powers().sum_numerator_powers();
  else return 0;
}

inline
bool
Integral::operator==(const Integral& i) const
{
  return _integral == i._integral;
}

inline
bool
Integral::operator!=(const Integral& i) const
{
  return _integral != i._integral;
}

inline
void
Integral::assign(const Expression& expr)
{
  if (defined()) _integral.entry().assign(expr);
}

inline
bool
Integral::defined() const
{
  return _integral != _default.begin();
}

inline
bool
Integral::assigned() const
{
  if (defined()) return _integral.entry().assigned();
  else return false;
}

inline
void
Integral::print(ostream& output) const
{
  if (defined()) 
    output << _integral.entry()._identifier.str() << _integral.powers();
}

inline
ostream&
operator<<(ostream& output, const Integral& i)
{
  i.print(output);
  return output;
}

/******************************************************************************
 *                                                                            *
 * Coefficient                                                                *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Represents coefficients in expressions involving integrals. At present
 * implemented either through gmp, when the coefficients are purely numeric, or
 * through a CASInterface which has to be specified by the user. The default is
 * gmp, when CAS is not set.
 *
 */

class Coefficient
{
public:

  Coefficient(const string& value = "0");

  Coefficient(const int8* buffer, int size);

#ifdef GMP
  Coefficient(const mpq_class& value);
#endif

  Coefficient(const Coefficient& coeff);

  Coefficient&
  operator=(const Coefficient& coeff);

  Coefficient
  operator-() const;

  Coefficient&
  operator+=(const Coefficient& coeff);
  
  Coefficient&
  operator-=(const Coefficient& coeff);
  
  Coefficient&
  operator*=(const Coefficient& coeff);
  
  Coefficient&
  operator/=(const Coefficient& coeff);
  
  friend Coefficient
  operator+(const Coefficient& coeff1, const Coefficient& coeff2);

  friend Coefficient
  operator-(const Coefficient& coeff1, const Coefficient& coeff2);

  friend Coefficient
  operator*(const Coefficient& coeff1, const Coefficient& coeff2);

  friend Coefficient
  operator/(const Coefficient& coeff1, const Coefficient& coeff2);

  void
  replace(const vector<pair<string, string> >& rules);

  bool 
  null() const;

  bool
  unit() const;

  int
  write(ResizableBuffer& buffer) const;

  void
  print(ostream& output) const;

public:

  static CASInterface* CAS;

private:

#ifndef GMP
    mutable string     _string;
#else
    mpq_class          _number;
#endif

};

/******************************************************************************
 *                                                                            *
 * Implementation of Coefficient                                              *
 *                                                                            *
 ******************************************************************************/

inline
Coefficient::Coefficient(const string& value) :
#ifndef GMP
  _string(value)
#else
  _number(erase_characters(value, " "))
#endif
{}

inline
Coefficient::Coefficient(const int8* buffer, int size)
#ifndef GMP
  : _string(buffer, size)
#endif
{
#ifdef GMP
  cerr << "Coefficient::Coefficient: no support form gmp data reads" << endl;
  exit(1);
#endif
}

#ifdef GMP
inline
Coefficient::Coefficient(const mpq_class& value) : _number(value)
{}
#endif
                                                                                
inline
Coefficient::Coefficient(const Coefficient& coeff) :
#ifndef GMP
  _string(coeff._string)
#else
  _number(coeff._number)
#endif
{}

inline
Coefficient&
Coefficient::operator=(const Coefficient& coeff)
{
  if (this == &coeff) return *this;
#ifndef GMP
  _string = coeff._string;
#else
  _number = coeff._number;
#endif
  return *this;
}

inline
Coefficient
Coefficient::operator-() const
{
#ifndef GMP
  return "-("+_string+")";
#else
  return Coefficient(-_number);
#endif
}

inline
Coefficient&
Coefficient::operator+=(const Coefficient& coeff)
{
#ifndef GMP
  _string = CAS->normal("("+_string+")+("+coeff._string+")");
#else
  _number += coeff._number;
#endif
  return *this;
}
inline
Coefficient&
Coefficient::operator-=(const Coefficient& coeff)
{
#ifndef GMP
  _string = CAS->normal("("+_string+")-("+coeff._string+")");
#else
  _number -= coeff._number;
#endif
  return *this;
}

inline
Coefficient&
Coefficient::operator*=(const Coefficient& coeff)
{
#ifndef GMP
  _string = CAS->normal("("+_string+")*("+coeff._string+")");
#else
  _number *= coeff._number;
#endif
  return *this;
}
inline
Coefficient&
Coefficient::operator/=(const Coefficient& coeff)
{
#ifndef GMP
  _string = CAS->normal("("+_string+")/("+coeff._string+")");
#else
  _number /= coeff._number;
#endif
  return *this;
}

inline
Coefficient
operator+(const Coefficient& coeff1, const Coefficient& coeff2)
{
#ifndef GMP
  return Coefficient::CAS->normal("("+coeff1._string+")+("+coeff2._string+")");
#else
  return Coefficient(coeff1._number+coeff2._number);
#endif
}

inline
Coefficient
operator-(const Coefficient& coeff1, const Coefficient& coeff2)
{
#ifndef GMP
  return Coefficient::CAS->normal("("+coeff1._string+")-("+coeff2._string+")");
#else
  return Coefficient(coeff1._number-coeff2._number);
#endif
}

inline
Coefficient
operator*(const Coefficient& coeff1, const Coefficient& coeff2)
{
#ifndef GMP
  return Coefficient::CAS->normal("("+coeff1._string+")*("+coeff2._string+")");
#else
  return Coefficient(coeff1._number*coeff2._number);
#endif
}

inline
Coefficient
operator/(const Coefficient& coeff1, const Coefficient& coeff2)
{
#ifndef GMP
  return Coefficient::CAS->normal("("+coeff1._string+")/("+coeff2._string+")");
#else
  return Coefficient(coeff1._number/(coeff2._number));
#endif
}

inline
bool
Coefficient::null() const
{
#ifndef GMP
  _string = erase_characters(_string, " ");
  if (_string == "0") return true;
  else return false;
#else
  return _number == 0;
#endif
}

inline
bool
Coefficient::unit() const
{
#ifndef GMP
  _string = erase_characters(_string, " ");
  if (_string == "1") return true;
  else return false;
#else
  return _number == 1;
#endif
}

inline
void
Coefficient::print(ostream& output) const
{
#ifndef GMP
  output << _string;
#else
  output << _number;
#endif
}

inline
ostream&
operator<<(ostream& output, const Coefficient& coeff)
{
  coeff.print(output);
  return output;
}

/******************************************************************************
 *                                                                            *
 * Expression                                                                 *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * An expression is just a set of terms, which are integrals with coefficients.
 * It can be null() or it can be (un)defined(). An expression can be constructed
 * from a string directly with IntegralMap. Otherwise the integrals have to
 * be obtained from IntegralMap.
 *
 * The expression class has means to express equivalence relations. Namely, if
 * the expression is formed by one term with unit coefficient it is assumed
 * the it is actually equivalent to the value of the integral in this single
 * term. This assumption does not pertain to the add() method, which is used
 * to construct expressions. It does also not apply to replace().
 *
 * Expression(s) are implemented currently with the STL map. This could be
 * changed to a simple vector of terms that would then have to be sorted at
 * crucial steps. The current implementation has some more space and time
 * overhead, which seems never to be a bottleneck. Maybe worth study in the
 * future...
 *
 * Reference counting for expressions is necessary. If an expression is a value
 * of an integral in memory it has to be kept as long as the integral exists. 
 * If, however, the value of the integral is on secondary storage, then the
 * expression is provided to the user, but can subsequently be removed or cached
 * for some period of time. The only way to have clear bookkeeping is to pass
 * expressions by value. If we don't want to loose much speed then reference
 * counting is the way to go. For this the terms and counters are stored in
 * the private ExpressionValue.
 *
 */

class Expression
{
public:

  Expression();

  Expression(int zero);

  Expression(const Expression& expr);

  ~Expression();

  Expression&
  operator=(const Expression& expr);

  void
  add(const Integral& i, const Coefficient& coeff);

  void
  replace(const vector<pair<string, string> >& rules);

  bool
  simplify();

  pair<Integral, Expression>
  solve() const;

  Expression
  solve(const Integral& i) const;

  bool
  defined() const;

  bool
  null() const;

  vector<Integral>
  integrals() const;

  vector<pair<Integral, Coefficient> >
  terms() const;

  int
  write(ResizableBuffer& buffer) const;

  void
  print(ostream& output) const;

  void
  dump(ostream& output) const;

private:

  bool
  equivalence_relation() const;

  const Integral&
  equivalent_integral() const;

private:

  typedef map<Integral, Coefficient> TermStorage;

  struct TermPtr : TermStorage::iterator
  {
    TermPtr();
    
    TermPtr(const TermStorage::iterator& t);

    const Integral&
    integral() const;

    Coefficient&
    coefficient();

    const Coefficient&
    coefficient() const;
  };

  struct TermConstPtr : TermStorage::const_iterator
  {
    TermConstPtr();
    
    TermConstPtr(const TermStorage::const_iterator& t);

    const Integral&
    integral() const;

    const Coefficient&
    coefficient() const;
  };

  /// implementation of the reference counting
  struct ExpressionValue
  {
    bool        _vanishing;
    
    TermStorage _terms;

    int         _ref_count;

    ExpressionValue();

    ExpressionValue(const ExpressionValue& value);
  };

private:

  ExpressionValue* _value;
};

/******************************************************************************
 *                                                                            *
 * Implementation of Expression                                               *
 *                                                                            *
 ******************************************************************************/

inline
Expression::Expression() : _value(new ExpressionValue)
{
  _value->_vanishing = false;
}

inline
Expression::Expression(int zero) : _value(new ExpressionValue)
{
  if (zero != 0)
    {
      cerr << "Expression::Expression: argument has to be 0" << endl;
      exit(1);
    }
  else
    _value->_vanishing = true;
}

inline
Expression::Expression(const Expression& expr) : _value(expr._value)
{
  ++_value->_ref_count;
}

inline
Expression::~Expression()
{
  if (--_value->_ref_count == 0) delete _value;
}

inline
Expression&
Expression::operator=(const Expression& expr)
{
  if (_value == expr._value) return *this;
  if (--_value->_ref_count == 0) delete _value;
  _value = expr._value;
  ++_value->_ref_count;
  return *this;
}

inline
bool
Expression::defined() const
{
  return !_value->_terms.empty() || _value->_vanishing;
}

// Return true if the expression/identity consists of a single integral only
// and its coefficient is 1.
inline
bool
Expression::equivalence_relation() const
{
  return _value->_terms.size()== 1 && 
    TermConstPtr(_value->_terms.begin()).coefficient().unit();
}

inline
const Integral&
Expression::equivalent_integral() const
{
  return TermConstPtr(_value->_terms.begin()).integral();
}

inline
Expression::ExpressionValue::ExpressionValue() : _ref_count(1)
{}

inline
Expression::ExpressionValue::ExpressionValue(const ExpressionValue& value) :
  _vanishing(value._vanishing),
  _terms(value._terms),
  _ref_count(1)
{}

inline
Expression::TermPtr::TermPtr()
{}

inline
Expression::TermPtr::TermPtr(const TermStorage::iterator& t) :
  TermStorage::iterator(t)
{}

inline
const Integral&
Expression::TermPtr::integral() const
{
  return (*this)->first;
}

inline
Coefficient&
Expression::TermPtr::coefficient()
{
  return (*this)->second;
}

inline
const Coefficient&
Expression::TermPtr::coefficient() const
{
  return (*this)->second;
}

inline
Expression::TermConstPtr::TermConstPtr()
{}

inline
Expression::TermConstPtr::TermConstPtr(const TermStorage::const_iterator& t) :
  TermStorage::const_iterator(t)
{}

inline
const Integral&
Expression::TermConstPtr::integral() const
{
  return (*this)->first;
}

inline
const Coefficient&
Expression::TermConstPtr::coefficient() const
{
  return (*this)->second;
}

inline
ostream&
operator<<(ostream& output, const Expression& expr)
{
  expr.print(output);
  return output;
}

/******************************************************************************
 *                                                                            *
 * Inlines of IntegralMap and Integral that can come only after the           *
 * definition of Expression                                                   *
 *                                                                            *
 ******************************************************************************/

inline
IntegralMap::IntegralEntry::IntegralEntry(IdentifierPtr i) :
  _identifier(i),
  _value(new Expression),
  _ref_count(0),
  _stored(false)
{}

inline
IntegralMap::IntegralEntry::IntegralEntry(const IntegralEntry& i) :
  _identifier(i._identifier),
  _value(new Expression(*i._value)),
  _ref_count(0),
  _stored(false)
{}

inline
IntegralMap::IntegralEntry::~IntegralEntry()
{
  delete _value;
}
   
inline
bool
IntegralMap::IntegralEntry::assigned() const
{
  return _value->defined();
}
   
inline
Expression
IntegralMap::IntegralEntry::value() const
{
  return *_value;
}

inline
bool
IntegralMap::IntegralEntry::simplify_value() const
{
  return _value->simplify();
}

inline
Expression
Integral::value() const
{
  if (defined()) return _integral.entry().value();
  else return Expression();
}

/******************************************************************************
 *                                                                            *
 * PowerSelector                                                              *
 *                                                                            *
 ******************************************************************************/

/// This is a filter class for integral power configurations during generation
class PowerSelector
{
public:

  PowerSelector();

  virtual
  ~PowerSelector();

  virtual
  bool
  compatible(const vector<int>& powers);
};

extern PowerSelector default_selector;

/******************************************************************************
 *                                                                            *
 * Implementation of PowerSelector                                            *
 *                                                                            *
 ******************************************************************************/

inline
PowerSelector::PowerSelector()
{}

inline
PowerSelector::~PowerSelector()
{}

inline
bool
PowerSelector::compatible(const vector<int>& powers)
{
  return true;
}

/******************************************************************************
 *                                                                            *
 * IdentityGenerator                                                          *
 *                                                                            *
 ******************************************************************************/

class IdentityGenerator
{
public:

  enum {
    /// if set, generates statistics at every step. not set by default.
    Verbose = 1,
    
    /// if set, databases will be created, where an identity will be assigned
    /// to every integral in such a way that recursive solution of the 
    /// identities leads to the solution of the given integral. not set by def.
    StoreIdentities = 2,

    /// if set, identities will only contain the solved prototype, because all
    /// the subprototypes will be discarded.
    Incomplete = 4
  };

public:

  IdentityGenerator(IntegralMap& integrals);

  ~IdentityGenerator();

  void
  enable(int option);

  void
  disable(int option);

  int
  options() const;

  /// free positions and number of denominators
  void
  solve_free_denominators(int n_indices, 
			  int min_n_denominators, 
			  int max_sum_denominator_powers, 
			  int max_sum_numerator_powers,
			  const string& identities_procedure,
			  PowerSelector& selector = default_selector);

  /// denominators at fixed positions. uses generated()
  void
  solve_fixed_denominators(int n_indices, 
			   int n_denominators, 
			   int max_sum_denominator_powers, 
			   int max_sum_numerator_powers,
			   const string& identities_procedure,
			   PowerSelector& selector = default_selector);

  /// denominators at fixed positions and fixed sums of powers. uses generated()
  void
  solve_fixed_sums(int n_indices, 
		   int n_denominators, 
		   int sum_denominator_powers, 
		   int sum_numerator_powers,
		   const string& identities_procedure,
		   PowerSelector& selector = default_selector);

  void
  solve(const string& procedure, vector<int> powers);

  int
  n_identities() const;

  void
  shift_n_identities(int n);

  void
  replacement_rules(const vector<pair<string, string> >& rules);

  void
  solved_identifier(const string& identifier);

  bool
  generated(const string& identities_procedure,
	    int sum_denominator_powers,
	    int sum_numerator_powers);
  
  void
  confirm_generated(const string& identities_procedure,
		    int sum_denominator_powers,
		    int sum_numerator_powers);

  bool
  dumped() const;

  pair<Expression, int>
  read_identity(const Integral& i);

  void
  write_identity(const Integral& i, const Expression& e);

  void
  print_database(ostream& output, const string& identifier);

  void
  sync_databases() const;

public:
  
  /// if true, the solvers will be stopped, the solution point will be
  /// written to the file IdSolverDump and the integrals will be stored in
  /// databases. provided for the implementation of signal handlers.
  static bool                   dump;

private:

  static const char*            _setup_key;

  static const char*            _generated_key;

  /// it has to be static, since the consistency of the identity databases
  /// requires a consistent counting.
  static int                    _n_identities;

private:

  int                           _options;

  bool                          _dumped;

  vector<int>                   _powers;

  string                        _procedure;

  IntegralMap&                  _integrals;

  vector<pair<string, string> > _rules;

  string                        _identifier;

  map<string, DB*>              _identities;
};

/******************************************************************************
 *                                                                            *
 * Implementation of IdentityGenerator                                        *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * If set, the replacement rules will be applied to every identity before it
 * will be solved for integrals. See Expression::replace().
 *
 */

inline
void
IdentityGenerator::enable(int option)
{
  _options |= option;
}

inline
void
IdentityGenerator::disable(int option)
{
  _options &= ~option;
}

inline
int
IdentityGenerator::options() const
{
  return _options;
}

inline
int
IdentityGenerator::n_identities() const
{
  return _n_identities;
}

inline
void
IdentityGenerator::shift_n_identities(int n)
{
  _n_identities += n;
}

/**
 *
 * applies the rules to the identity before solving it. If the identities should
 * be stored, then those that are stored are in the original form and its only
 * the internal representation that gets modified.
 *
 */

inline
void
IdentityGenerator::replacement_rules(const vector<pair<string, string> >& r)
{
  _rules = r;
}

/**
 *
 * when reading in an identity, all integrals not having the specified 
 * identifier will be set to zero. The stored identities will, of course, have
 * their original form.
 *
 */

inline
void
IdentityGenerator::solved_identifier(const string& i)
{
  _identifier = i;
}

inline
bool
IdentityGenerator::dumped() const
{
  return _dumped;
}

/******************************************************************************
 *                                                                            *
 * NamedPrototype                                                             *
 *                                                                            *
 ******************************************************************************/

struct NamedPrototype : public Prototype
{
  NamedPrototype(const Prototype& p, const string& name);
  
  NamedPrototype(int n, const string& name);
  
  string name;
};
  
/******************************************************************************
 *                                                                            *
 * Inlines of NamedPrototype                                                  *
 *                                                                            *
 ******************************************************************************/

inline
NamedPrototype::NamedPrototype(const Prototype& p, const string& name) :
  Prototype(p), name(name)
{}

inline
NamedPrototype::NamedPrototype(int n, const string& name) :
  Prototype(n), name(name)
{}

/******************************************************************************
 *                                                                            *
 * SymmetricSelector                                                          *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Selector which only accepts unique representants with respect to symmetries.
 * It does not touch the numerators, since it is more complicated to decide
 * which is the unique representant. The selected configuration is the one with
 * lexicographically minimal denominator configuration.
 *
 */
 
class SymmetricSelector : public PowerSelector
{
public:

  SymmetricSelector(const NamedPrototype& p);

  bool
  compatible(const vector<int>& powers);

private:

  vector<vector<int> > _denominator_symmetry_group;
};

/******************************************************************************
 *                                                                            *
 * Compare                                                                    *
 *                                                                            *
 ******************************************************************************/

template<class _OBJECT>
struct Compare
{
  bool
  operator()(const _OBJECT* p1, const _OBJECT* p2) const
  {
    return *p1 < *p2;
  }
};

/******************************************************************************
 *                                                                            *
 * PrototypeMap                                                               *
 *                                                                            *
 ******************************************************************************/

class PrototypeMap
{
public:

  typedef string (*GeneratorType)(NamedPrototype&, int&);

  typedef bool (*SelectorType)(const Prototype& parent,
			       const Prototype& child,
			       const vector<int>& remapping);

  enum {
    /// see IdentityGenerator::Verbose
    Verbose = 1,

    /// if set, generation points will not be restricted by symmetries.
    /// by default it is set.
    AsymmetricPoints = 2,
    
    /// if set, the results will be stored in a database and not
    /// printed to a text file. by default it is not set.
    CreateDatabases = 4,

    /// see IdentityGenerator::StoreIdentities
    StoreIdentities = 8,

    /// if set, solves only prototypes which have a line with a mass X. right
    /// now, the only use is in the difference equation determination. see also
    /// LaportaOrdering
    SolveX = 16,

    /// if set, postscript pictures will be generated for all the prototypes
    Postscript = 32
  };

public:

  PrototypeMap();

  ~PrototypeMap();

  void
  read();

  void
  enable(int option);

  void
  disable(int option);

  int
  options() const;

  bool
  insert(const Prototype& p);

  void
  insert_child_selector(SelectorType s);
  
  void
  insert_generator(GeneratorType g);

  void
  complete();

  void
  replacement_rules(const vector<pair<string, string> >& rules);

  void
  denominator_symmetrization_order(int o) const;
  
  void
  numerator_symmetrization_order(int o) const;

  void
  solve(int max_sum_denominator_powers,
	int max_sum_numerator_powers,
	IntegralMap& integrals,
	int master_denominator_powers = -1,
	int master_numerator_powers = -1) const;

  void
  solve(const vector<pair<string, pair<int, int> > >& powers,
	IntegralMap& integrals,
	int master_denominator_powers = -1,
	int master_numerator_powers = -1) const;

  void
  init_iterator() const;

  bool
  next_prototype() const;

  NamedPrototype
  current_prototype() const;

  void
  print(ostream& output = cout) const;
  
  /// the name of the form pocedure used by ibp_generator. by default ibp.
  static string ibp_procedure;

  static string
  ibp_generator(NamedPrototype& p, int& index);

  static string
  lorentz3p_generator(NamedPrototype& p, int& index);

  static string
  lorentz4p_generator(NamedPrototype& p, int& index);

  static string
  symmetry_generator(NamedPrototype& p, int& index);

private:

  struct CompareNEdges
  {
    bool
    operator()(NamedPrototype* p1, NamedPrototype* p2);
  };

  typedef set<NamedPrototype*, Compare<NamedPrototype> > StorageType;

  typedef multiset<NamedPrototype*, CompareNEdges>       SortedStorageType;
  
private:

  void
  insert(NamedPrototype* p);

  /// Simple generator template that just calls a FORM program
  static string
  generator_interface(const string& generator_name, 
		      NamedPrototype& p, 
		      int& index);

private:

  int                                         _options;
  
  static const string                         _prototype_name_prefix;
  
  mutable int                                 _denominator_symmetrization_order;

  mutable int                                 _numerator_symmetrization_order;

  int                                         _n_prototypes;

  StorageType                                 _prototypes;

  SortedStorageType                           _sorted_prototypes;

  mutable SortedStorageType::reverse_iterator _current_prototype;

  vector<GeneratorType>                       _generators;
  
  SelectorType                                _selector;

  vector<pair<string, string> >               _rules;
};

/******************************************************************************
 *                                                                            *
 * Interface of the PrototypeMap class other than methods and friends         *
 *                                                                            *
 ******************************************************************************/

inline
ostream&
operator<<(ostream& output, const PrototypeMap& prototypes)
{
  prototypes.print(output);
  return output;
}

/******************************************************************************
 *                                                                            *
 * Inlines of PrototypeMap                                                    *
 *                                                                            *
 ******************************************************************************/

inline
PrototypeMap::PrototypeMap() : _options(0),
			       _denominator_symmetrization_order(0),
			       _numerator_symmetrization_order(0),
			       _n_prototypes(0),
			       _current_prototype(_sorted_prototypes.rbegin()),
			       _selector(NULL)
{
  insert_generator(ibp_generator);
}

inline
void
PrototypeMap::enable(int option)
{
  _options |= option;
}

inline
void
PrototypeMap::disable(int option)
{
  _options &= ~option;
}

inline
int
PrototypeMap::options() const
{
  return _options;
}

/**
 *
 * If set, children of a given prototype (obtained automatically by shrinking
 * edges) will be rejected by the selector routine (a return value of true means
 * that the child is valid and should be kept). A rejected child is then
 * assumed to vanish.
 *
 */

inline
void
PrototypeMap::insert_child_selector(SelectorType s)
{
  _selector = s;
}

inline
void
PrototypeMap::insert_generator(GeneratorType g)
{
  _generators.push_back(g);
}

/**
 *
 * If set, the replacement rules will be applied to every identity before it
 * will be solved for integrals. See Expression::replace().
 *
 */

inline
void
PrototypeMap::replacement_rules(const vector<pair<string, string> >& r)
{
  _rules = r;
}

inline
void
PrototypeMap::denominator_symmetrization_order(int o) const
{
  _denominator_symmetrization_order = o;
}

inline
void
PrototypeMap::numerator_symmetrization_order(int o) const
{
  _numerator_symmetrization_order = o;
}

inline
void
PrototypeMap::init_iterator() const
{
  _current_prototype = _sorted_prototypes.rbegin();
}

inline
bool
PrototypeMap::next_prototype() const
{
  if (++_current_prototype == _sorted_prototypes.rend())
    {
      init_iterator();
      return false;
    }
  return true;
}

inline
NamedPrototype
PrototypeMap::current_prototype() const
{
  return **_current_prototype;
}

inline
string
PrototypeMap::lorentz3p_generator(NamedPrototype& p, int& index)
{
  return generator_interface("lorentz3p", p, index);
}

inline
string
PrototypeMap::lorentz4p_generator(NamedPrototype& p, int& index)
{
  return generator_interface("lorentz4p", p, index);
}

/******************************************************************************
 *                                                                            *
 * Inlines of PrototypeMap::CompareNEdges                                     *
 *                                                                            *
 ******************************************************************************/

inline
bool
PrototypeMap::CompareNEdges::operator()(NamedPrototype* p1, NamedPrototype* p2)
{
  if (p1->n_edges() > p2->n_edges()) return true;
  else if (p1->n_edges() == p2->n_edges()) return p1->name > p2->name;
  else return false;
}

#endif
