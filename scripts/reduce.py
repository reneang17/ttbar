#!/usr/bin/env python3
#
# todo:
#

import argparse
import os
import re
import string
import subprocess
import pyIdSolver

parser =  argparse.ArgumentParser()
parser.add_argument("integralnumber", \
                    help="number of the integral from 'integrals' file to be reduced")
parser.add_argument("--num", action="store_true", \
                    help="substitute numerical values for parameters")
parser.add_argument("--tmp", action="store_true", \
                    help="keep temporary files")
args = parser.parse_args()


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  #-----------------------------------------------------------------------------
  # create parameters list
  parstr = "ep ap b c qT2"
  if args.num:
    with open("parstr.dat") as fh: 
      parstr = fh.read()

  #-----------------------------------------------------------------------------
  # extract integral to be reduced and save it into temporary file
  integralstr = pyIdSolver.get_prototype_from_list("integrals", args.integralnumber)
  infname = ".int{0}".format(args.integralnumber)
  with open(infname, "w") as fh: 
    fh.write(integralstr)

  #-----------------------------------------------------------------------------
  # perform reduction

  #./solve_integrals int40 out
  outfname = "out{0}".format(args.integralnumber)
  if args.num: outfname += "num"
  else: outfname += "ana"
  commandlist=["solve_integrals", infname, outfname] + parstr.split()
  print(" ".join(commandlist))
  p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  out, err = p.communicate()
  outstr = out.decode("utf-8").strip(string.whitespace)
  p.wait()
  print(outstr)
  if not args.tmp:
    os.remove(infname)

