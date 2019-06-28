/******************************************************************************
 *                                                                            *
 * Copyright (C) 2002-2005 Michal Czakon                                      *
 *                                                                            *
 ******************************************************************************/

#ifndef DEBUG_HPP
#define DEBUG_HPP 1

#ifdef DEBUG

#include <cassert>
#include <vector>

using std::vector;

/// vector class with range checks for operator[]

template<typename T>
class DebugVector : public vector<T>
{
public:
  DebugVector() : vector<T>() {};
  DebugVector(size_t n) : vector<T>(n) {};
  DebugVector(size_t n, const T& t) : vector<T>(n, t) {};
  template<typename InputIterator>
  DebugVector(InputIterator begin, InputIterator end) : vector<T>(begin,end) {};
  typename vector<T>::reference operator[](size_t i)
  {
    const int n = vector<T>::size();
    assert(i < n);
    return *(vector<T>::begin()+i);
  };
  typename vector<T>::const_reference operator[](size_t i) const
  {
    const int n = vector<T>::size();
    assert(i < n);
    return *(vector<T>::begin()+i);
  };
};

#define vector DebugVector

#endif

#endif
