/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#ifndef UTILITIES_HPP
#define UTILITIES_HPP 1

#include <stdlib.h>
#include <unistd.h>

#include <string>
#include <iostream>
#include <vector>

#ifdef MATHLINK
#include "mathlink.h"
#endif

#ifdef DEBUG
#include "Debug.hpp"
#endif

using namespace std;

/******************************************************************************
 *                                                                            *
 * simple functions                                                           *
 *                                                                            *
 ******************************************************************************/

string
erase_characters(const string& original, const char* characters);

inline
string
erase_whitespace(const string& original)
{
  return erase_characters(original, "\n\t ");
}

int
solve_equations(vector<vector<int> >& equations, int n);

/******************************************************************************
 *                                                                            *
 * CASInterface                                                               *
 *                                                                            *
 ******************************************************************************/

class CASInterface
{
public:

  virtual
  ~CASInterface() {};

  virtual void
  symbol(const string& x) = 0;

  virtual string
  evaluate(const string& expression) = 0;

  virtual string
  normal(const string& expression) = 0;
};

/******************************************************************************
 *                                                                            *
 * IPCPipe                                                                    *
 *                                                                            *
 ******************************************************************************/

class IPCPipe
{
public:

  explicit 
  IPCPipe(const char* command);

  ~IPCPipe();

  void
  write(const string& message);

  string
  read(const char delimiter);

private:

  IPCPipe();

private:

  int _pid;

  int _in_fd;

  int _out_fd;
};

inline
IPCPipe::~IPCPipe()
{
  close(_in_fd);
  close(_out_fd);
}

/******************************************************************************
 *                                                                            *
 * MathematicaInterface                                                       *
 *                                                                            *
 ******************************************************************************/

#ifdef MATHLINK

class MathematicaInterface : public CASInterface
{
public:
  
  MathematicaInterface(int memory_in_use_limit = 0);
  
  virtual
  ~MathematicaInterface();

  virtual void
  symbol(const string& x);

  virtual string
  evaluate(const string& expression);

  virtual string
  normal(const string& expression);

  string
  cancel(const string& expression);

  string
  together(const string& expression);

  string
  factor(const string& expression);

  string
  simplify(const string& expression);

  void
  reinitialize();

  void
  clear_cache();

  int
  memory_in_use() const;

  void
  set_memory_in_use_limit(int n);

  int
  get_memory_in_use_limit() const;

private:

  void
  connect();

  void
  disconnect();

private:

  int   _memory_in_use_limit;

  MLENV _environment;

  MLINK _link;
};

inline
MathematicaInterface::MathematicaInterface(int memory_in_use_limit) :
  _memory_in_use_limit(memory_in_use_limit)
{
  connect();
}

inline
MathematicaInterface::~MathematicaInterface()
{
  disconnect();
}

inline 
void
MathematicaInterface::symbol(const string& x)
{}

inline
string
MathematicaInterface::normal(const string& expression)
{
  return together(expression);
}

inline
string
MathematicaInterface::cancel(const string& expression)
{
  return evaluate("Cancel["+expression+"]");
}

inline
string
MathematicaInterface::together(const string& expression)
{
  return evaluate("Together["+expression+"]");
}

inline
string
MathematicaInterface::factor(const string& expression)
{
  return evaluate("Factor["+expression+"]");
}

inline
string
MathematicaInterface::simplify(const string& expression)
{
  return evaluate("Simplify["+expression+"]");
}

inline
void
MathematicaInterface::reinitialize()
{
  disconnect();
  connect();
}

inline
void
MathematicaInterface::set_memory_in_use_limit(int n)
{
  _memory_in_use_limit = n;
}

inline
int
MathematicaInterface::get_memory_in_use_limit() const
{
  return _memory_in_use_limit;
}

#endif

/******************************************************************************
 *                                                                            *
 * MapleInterface                                                             *
 *                                                                            *
 ******************************************************************************/

class MapleInterface : public CASInterface
{
public:

  MapleInterface();

  virtual
  ~MapleInterface();

  virtual void
  symbol(const string& x);

  virtual string
  evaluate(const string& expression);

  virtual string
  normal(const string& expression);

private:

  IPCPipe _maple;
};

inline
MapleInterface::MapleInterface() : _maple("maple")
{
  _maple.write("interface(prettyprint=0,echo=0,quiet=true);\n;\n");
  _maple.read(';');  
}

inline
MapleInterface::~MapleInterface()
{
  _maple.write("quit;\n");
}

inline
void
MapleInterface::symbol(const string& x)
{}

inline
string
MapleInterface::evaluate(const string& expression)
{
  _maple.write(expression+";\"\";\n");
  return erase_characters(_maple.read('"'), "\n\\");
}

inline
string
MapleInterface::normal(const string& expression)
{
  return evaluate("normal("+expression+")");
}

/******************************************************************************
 *                                                                            *
 * FermatInterface                                                            *
 *                                                                            *
 ******************************************************************************/

class FermatInterface : public CASInterface
{
public:

  FermatInterface();

  virtual
  ~FermatInterface();

  virtual void
  symbol(const string& x);

  virtual string
  evaluate(const string& expression);

  virtual string
  normal(const string& expression);

private:

  IPCPipe _fermat;
};

inline
FermatInterface::~FermatInterface()
{
  _fermat.write("&q;\n");
}

inline
void
FermatInterface::symbol(const string& x)
{
  evaluate("&(J="+x+")");
}

inline
string
FermatInterface::normal(const string& expression)
{
  return evaluate(expression);
}

/******************************************************************************
 *                                                                            *
 * Partition                                                                  *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Generates partitions of an integer into a fixed number of integers incl. 0, 
 * where the individual numbers can be optionally bound. Upon construction, the 
 * first partition is available through the current() method.
 *
 */

class Partition
{
public:

  Partition(int size, int sum);

  Partition(int size, int sum, int max);

  int
  operator[](int i) const;

  /// available after construction
  vector<int>
  current() const;

  /// returns false if there is no next partition
  bool
  next();

private:

  Partition();

  void
  initialize(int size, int sum);
  
private:

  int         _max;

  vector<int> _remaining_sum;
  
  vector<int> _current_partition;
};

inline
Partition::Partition(int size, int sum) :
  _max(sum), _remaining_sum(size), _current_partition(size)
{
  initialize(size, sum);
}

inline
Partition::Partition(int size, int sum, int max) :  
  _max(max), _remaining_sum(size), _current_partition(size)
{
  initialize(size, sum);
}

inline
int
Partition::operator[](int i) const
{
  return _current_partition[i];
}

inline
vector<int>
Partition::current() const
{
  return _current_partition;
}

/******************************************************************************
 *                                                                            *
 * Timer                                                                      *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Trivial timer class, which measures the time interval from construction
 * or from the reset() point.
 *
 */

class Timer
{
public:

  Timer();

  void
  reset();

  void
  print(ostream& output) const;

private:

  struct timeval _time;
};

#endif
