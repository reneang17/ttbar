/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include "Utilities.hpp"

/******************************************************************************
 *                                                                            *
 * next                                                                       *
 *                                                                            *
 ******************************************************************************/

bool
Partition::next()
{
  do
    {
      int i = _current_partition.size();
      while (--i >= 0 && !_current_partition[i]) ;
      if (i < 0) return false;

      --_current_partition[i];
      
      for (++i; i < _current_partition.size(); ++i)
	{
	  _remaining_sum[i] = _remaining_sum[i-1]-_current_partition[i-1];
	  _current_partition[i] = min(_remaining_sum[i], _max);
	}
    }
  while (_current_partition.back() != _remaining_sum.back());

  return true;
}

/******************************************************************************
 *                                                                            *
 * initialize                                                                 *
 *                                                                            *
 ******************************************************************************/

void
Partition::initialize(int size, int sum)
{
  if (size <= 0 || sum < 0 || _max < 0 || size*_max < sum)
    {
      cerr << "Partition::initialize: invalid parameters Partition(" 
	   << size << ", " << sum << ", " << _max << ")" << endl;
      
      exit(1);
    }

  _remaining_sum[0] = sum;
  _current_partition[0] = min(sum, _max);

  for (int i = 1; i < size; ++i)
    {
      _remaining_sum[i] = _remaining_sum[i-1]-_current_partition[i-1];
      _current_partition[i] = min(_remaining_sum[i], _max);
    }
}
