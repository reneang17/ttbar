#!/usr/bin/env python

import argparse
import string
import re
import glob
import math

parser =  argparse.ArgumentParser()
parser.add_argument("--sfcalcdir",
                    help="directory with your sfcalc installation", 
                    default ="../../sfcalc-devel")
args = parser.parse_args()

files = ["res13_00_int10", "res13_00_int11", "res13_00_int12", "res13_00_int13",
         "res13_00_int14", "res13_00_int15", "res13_00_int16", "res14_00_int13",
         "res14_00_int14", "res14_00_int15", "res14_00_int16", "res34_00_int12"]


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  # read function names from the "integrals.dat" file
  with open(args.sfcalcdir+"/libint/integrals.dat") as fh:
    functions = fh.read().split()

  for func in functions:
    name = func.lstrip("int").split("_")

    resfile_prefix = "res{0}_{1}{2}_{3}".\
    format(name[0],name[-2][-1],name[-1][-1], name[1])

    resfile_middle= "_{0}_{1}".format( name[2],name[3])

    resfile = resfile_prefix + resfile_middle + "*"

    if resfile_prefix in files:
      if len(glob.glob(resfile)) == 0:
        print(resfile)
