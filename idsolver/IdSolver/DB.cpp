/******************************************************************************
 *                                                                            *
 * Copyright (C) 2003 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include "IdSolver.hpp"

#ifdef LARGE_DATABASES

#include <sys/types.h>
#include <dirent.h>
#include <curia.h>

#define GB       1073741824. // 1GB
#define UNIT     2147483648. // 2GB
#define THRESHOLD 536870912. // 512MB
#define SHIFTDNUM          5 // 5 * 2GB = 10GB

#endif

/******************************************************************************
 *                                                                            *
 * constructor                                                                *
 *                                                                            *
 ******************************************************************************/

DB::DB(const char* name, int omode) throw(DATABASE_ERROR)
{
  _db = new DATABASE(name, omode);

#ifdef LARGE_DATABASES

  // determination of the maximal size of the database, based on the assumption
  // that the database directory contains dnum + 3 entries (one for the control
  // depot and the rest for "." and ".."), and the maximum size is dnum * 2 GB.

  DIR *dp;
  struct dirent *ep;

  int dnum = -3;
  dp = opendir (name);
  if (dp != NULL)
    {
      while (ep = readdir (dp)) ++dnum;
      (void) closedir (dp);
    }
  else
    throw(DATABASE::EOPEN);

  _max_size = dnum*UNIT;

#else

  _max_size = 0;

#endif
}

/******************************************************************************
 *                                                                            *
 * destructor                                                                 *
 *                                                                            *
 ******************************************************************************/

DB::~DB() throw()
{
  delete _db;
}

/******************************************************************************
 *                                                                            *
 * put                                                                        *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Automatic resizing occurs for Curia databases if the free space after
 * putting the record would be less than half a gigabyte. The resized database
 * will have a additional free 10GB.
 *
 */

void
DB::put(const char* kbuf, int ksiz, const char* vbuf, int vsiz, int dmode)
  throw (DATABASE_ERROR)
{
#ifdef LARGE_DATABASES

  double curr_size = _db->fsizd();
  if (_max_size-curr_size-vsiz < THRESHOLD)
    {
      string name = _db->name();

      int omode;
      if (_db->writable()) omode = DATABASE::OWRITER;
      else omode = DATABASE::OREADER;

      int dnum = ((int) (_max_size/UNIT)) + SHIFTDNUM;

      delete _db;

      cout << "Resizing " << name 
	   << " from " << _max_size/GB << " GB...";
      cout.flush();

      // at this point we have to switch to c...
     
      CURIA* olddb = cropen(name.c_str(), CR_OREADER, -1, -1);
      crexportdb(olddb, (name+".export").c_str());
      crclose(olddb);
      crremove(name.c_str());
      CURIA* newdb = cropen(name.c_str(), CR_OWRITER | CR_OCREAT, -1, dnum);
      crimportdb(newdb, (name+".export").c_str());
      crclose(newdb);

      // out of lazyness I use system to cleanup to export directory
      
      system(("rm -rf "+name+".export").c_str());

      // and back to c++

      _db = new DATABASE(name.c_str(), omode);
      _max_size = dnum*UNIT;

      cout << " to " << _max_size/GB << " GB" << endl;
    }

#endif

  _db->put(kbuf, ksiz, vbuf, vsiz, dmode);
}
  
/******************************************************************************
 *                                                                            *
 * get                                                                        *
 *                                                                            *
 ******************************************************************************/

char*
DB::get(const char* kbuf, int ksiz, int start, int max, int* sp)
  throw (DATABASE_ERROR)
{
  return _db->get(kbuf, ksiz, start, max, sp);
}
  
/******************************************************************************
 *                                                                            *
 * iterinit                                                                   *
 *                                                                            *
 ******************************************************************************/

void
DB::iterinit() throw (DATABASE_ERROR)
{
  _db->iterinit();
}

/******************************************************************************
 *                                                                            *
 * iternext                                                                   *
 *                                                                            *
 ******************************************************************************/

char*
DB::iternext(int* sp) throw (DATABASE_ERROR)
{
  return _db->iternext(sp);
}

/******************************************************************************
 *                                                                            *
 * sync                                                                       *
 *                                                                            *
 ******************************************************************************/

void
DB::sync() throw (DATABASE_ERROR)
{
  _db->sync();
}
