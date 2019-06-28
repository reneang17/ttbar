/******************************************************************************
 *                                                                            *
 * Copyright (C) 2006 Michal Czakon                                           *
 *                                                                            *
 ******************************************************************************/

#include <iostream>
#include <xcuria.h>
#include <xdepot.h>
#include <sys/stat.h>

using std::cout;
using std::cerr;
using std::endl;
using qdbm::Curia;
using qdbm::Curia_error;
using qdbm::Depot;
using qdbm::Depot_error;

/******************************************************************************
 *                                                                            *
 * usage                                                                      *
 *                                                                            *
 ******************************************************************************/

const char* usage = " small large [ndivisions]\n\n\
       Takes the small database (Depot) and makes a large database (Curia).\n\
       The number ndivisions is the number of databases within the large\n\
       database directory. It determines the maximum size of the database to be\n\
       ndivisions x 2GB. The default is ndivisions = 5.\n";

/******************************************************************************
 *                                                                            *
 * main                                                                       *
 *                                                                            *
 ******************************************************************************/

int
main(int argc, char* argv[])
{
  if (argc != 3 && argc != 4)
    {
      cout << "usage: " << argv[0] << usage;
      return 0;
    }

  int bnum = -1;
  int ndiv = 5;
  if (argc == 4) ndiv = atoi(argv[3]);

  struct stat buf;
  if (!stat(argv[2], &buf))
    {
      cerr << "Curia: database " << argv[2] << " already exists." << endl;
      return 1;
    }

  try
    {
      Depot dp(argv[1]);
      cout << dp.rnum() << " records in the database\n";

      Curia cr(argv[2], Curia::OWRITER | Curia::OCREAT, bnum, ndiv);

      dp.iterinit();

      for (;;)
	{
	  int key_size;
	  char* key = dp.iternext(&key_size);

	  int data_size;
	  char* data = dp.get(key, key_size, 0, -1, &data_size);

	  cr.put(key, key_size, data, data_size);

	  free(data);
	  free(key);
	}
    }
  catch (Depot_error dpe)
    {
      if (dpe.code() != Depot::ENOITEM)
	{
	  cerr << "Depot: " << dpe << endl;
	  return 1;
	}
    }
  catch (Curia_error cre)
    {
      cerr << "Curia: " << cre << endl;
      return 1;
    }
}
