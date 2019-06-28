/******************************************************************************
 *                                                                            *
 * Copyright (C) 2006 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include <climits>
#include "IdSolver.hpp"

/******************************************************************************
 *                                                                            *
 * usage                                                                      *
 *                                                                            *
 ******************************************************************************/

const char* usage = " prototype [shift]\n\n\
       If called with one argument, gives the lowest and highest identity\n\
       indices in the prototype identity database. If shift is given, then all\n\
       the identity indices are shifted.\n";

/******************************************************************************
 *                                                                            *
 * globals                                                                    *
 *                                                                            *
 ******************************************************************************/

/**
 *
 * Hardcoded here, even though these are set in IdentityGenerator.cpp, because
 * they are static. Anyway, the loop in main also depends on the structure of
 * the entries in the identity database.
 *
 */

const char* setup_key = "setup";
const char* generated_key = "generated";

/******************************************************************************
 *                                                                            *
 * main                                                                       *
 *                                                                            *
 ******************************************************************************/

int
main(int argc, char* argv[])
{
  if (argc != 2 && argc != 3)
    {
      cout << "usage: " << argv[0] << usage;
      return 0;
    }

  const string identifier(argv[1]);
  int shift = 0;
  if (argc == 3) shift = atoi(argv[2]);
  int min = INT_MAX, max  = INT_MIN;

  try
    {
      DB db(("id"+identifier+".dat").c_str(), DATABASE::OWRITER);
      
      db.iterinit();

      for (;;)
	{
	  int key_size;
	  int8* key = db.iternext(&key_size);

	  if (strncmp(key, setup_key, key_size) &&
	      strncmp(key, generated_key, key_size))
	    {
	      int identity_size;
	      int8* identity_data= db.get(key, key_size, 0, -1, &identity_size);
	      int index = *((int*) (identity_data+identity_size-sizeof(int)));

	      if (argc == 3)
		{
		  index += shift;
		  *((int*) (identity_data+identity_size-sizeof(int))) = index;
		  db.put(key,
			 key_size,
			 identity_data,
			 identity_size,
			 DATABASE::DOVER);
		}

	      free(identity_data);
	      
	      if (index < min) min = index;
	      if (index > max) max = index;
	    }

	  free(key);
	}
    }
  catch (DATABASE_ERROR e)
    {
      if (e.code() != DATABASE::ENOITEM)
	{
	  cerr << "IdentityGenerator::print_database: " 
	       << "id"+identifier+".dat" << " " << e << endl;
	  return 1;
	}
    }

  cout << "Identity index range: [" << min << ", " << max << "]" << endl;
}
