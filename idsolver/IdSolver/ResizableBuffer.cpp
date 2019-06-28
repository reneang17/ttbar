/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include <IdSolver.hpp>

/******************************************************************************
 *                                                                            *
 * copy constructor                                                           *
 *                                                                            *
 ******************************************************************************/

ResizableBuffer::ResizableBuffer(const ResizableBuffer& buffer) :
   _begin(new int8[buffer.capacity()]),
   _end_of_data(_begin+buffer.size()),
   _end_of_storage(_begin+buffer.capacity())
{
  memcpy(_begin, buffer._begin, buffer.size());
}
  
/******************************************************************************
 *                                                                            *
 * assignment operator                                                        *
 *                                                                            *
 ******************************************************************************/

ResizableBuffer&
ResizableBuffer::operator=(const ResizableBuffer& buffer)
{
  if (this == &buffer) return *this;

  delete[] _begin;
  _begin = new int8[buffer.capacity()];
  _end_of_data = _begin+buffer.size();
  _end_of_storage = _begin+buffer.capacity();
  memcpy(_begin, buffer._begin, buffer.size());

  return *this;
}

/******************************************************************************
 *                                                                            *
 * reserve                                                                    *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * If the requested additional_size is greater than the current free() size, the
 * memory is reallocated with roundup to a multiple of buffer_size. Notice that
 * only the data contained between _begin and _end_of_data will be copied.
 *
 */

void
ResizableBuffer::reserve(int additional_size)
{
  if (additional_size <= free()) return;

  const int data_size = size();
  const int allocation_size = capacity()
    +((additional_size-free())/buffer_size+1)*buffer_size;

  int8* buffer_begin = new int8[allocation_size];
  memcpy(buffer_begin, _begin, data_size);
  delete[] _begin;

  _begin = buffer_begin;
  _end_of_data = _begin+data_size;
  _end_of_storage = _begin+allocation_size;
}
