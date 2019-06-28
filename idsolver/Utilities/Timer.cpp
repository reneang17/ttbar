/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include "Utilities.hpp"
#include <sys/time.h>

/******************************************************************************
 *                                                                            *
 * constructor                                                                *
 *                                                                            *
 ******************************************************************************/

Timer::Timer()
{
  struct timezone zone;
  gettimeofday(&_time, &zone);
}

/******************************************************************************
 *                                                                            *
 * reset                                                                      *
 *                                                                            *
 ******************************************************************************/

void
Timer::reset()
{
  struct timezone zone;
  gettimeofday(&_time, &zone);
}

/******************************************************************************
 *                                                                            *
 * print                                                                      *
 *                                                                            *
 ******************************************************************************/

void
Timer::print(ostream& output) const
{
  struct timezone zone;
  struct timeval elapsed, current_time;
  gettimeofday(&current_time, &zone);

  elapsed.tv_sec = current_time.tv_sec - _time.tv_sec;
  elapsed.tv_usec = current_time.tv_usec - _time.tv_usec;

  if (elapsed.tv_usec < 0)
    {
      elapsed.tv_sec -= 1;
      elapsed.tv_usec += 1000000;
    }

  output << elapsed.tv_sec/60 << "m"
	 << elapsed.tv_sec % 60 << "."
	 << elapsed.tv_usec/100000 << "s";
}
