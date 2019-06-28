#!/usr/bin/env python3
#
# usage:
#

import argparse
import multiprocessing
import os
import subprocess
import pyIBPs

parser =  argparse.ArgumentParser()
parser.add_argument("prototype",
                    help="name of the prototype")
parser.add_argument("--integrals", "-i",
		    help="file with list of integrals in the format [1,0,...., 1]; the script will eveluate IBP identities and symmetries for this specific list of integrals and save them in log files, one log file per integral")
parser.add_argument("--nprocmax", "-n", type=int,
                    help = "max number of parallel processes")
args = parser.parse_args()

#-------------------------------------------------------------------------------
def prepare_procedure_names(prototype):
  identities = "{0}identities.prc".format(prototype)
  symmetries = "{0}symmetries.prc".format(prototype)
  return (identities, symmetries)

#-------------------------------------------------------------------------------
# worker function for multiprocessing
def worker(integral, procedure, logfilecounter):
    p = multiprocessing.current_process()
    formfile = "{0}.id.frm".format(p.pid)
    with open(formfile,"w") as current_file:
      content = "#call PR0{0}({1})\n".format(procedure,",".join(str(e) for e in integral))
      current_file.write(content)
    try:
      proc = subprocess.Popen(["form",formfile], stdout=subprocess.PIPE)
      proc.wait()
      output = proc.communicate()[0]
      # b because output is a byte string
      with open("{0}.log".format(logfilecounter), "wb") as logfile:
        logfile.write(output)
    except subprocess.CalledProcessError as err:
      print(err)
    print (integral, formfile, logfilecounter)
    os.unlink(formfile)
    return

#-------------------------------------------------------------------------------
#                            main part of the script
#-------------------------------------------------------------------------------
if __name__ == '__main__':
  # read and process integral list
  with open(args.integrals) as integrals_file:
    integrals = pyIBPs.input_file_into_list_of_integrals(integrals_file)
    #print(integrals)
  jobs = []
  logfilecounter = 0
  pool = multiprocessing.Pool(args.nprocmax)
  #for procedure in ["identities", "symmetries"]:
  for procedure in ["identities"]:
    for integral in integrals:
      pool.apply_async(worker, args=(integral,procedure, \
                                  logfilecounter, ))
      logfilecounter += 1
  pool.close()
  pool.join()
  print("Generated files: 0.log...{0}.log.".format(logfilecounter-1))
