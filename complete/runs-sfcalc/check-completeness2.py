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

dirs = ["int1313", "int1314", "int1333", "int1334", "int1414", 
        "int1433", "int1434", "int3333", "int3334", "int3434",
        "int13", "int14", "int33", "int34"]


poles = ["00"]

#poles = ["20", "21", "22", "23", "10", "11", "12", "13", "00", "01", "02", "03"]


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  # get list of integralnd files
  resfiles = []
  for dir in dirs:
    for pole in poles:
      path = args.sfcalcdir+"/"+dir +\
             "/*/int*_ap_ep_{0}_{1}_C".format(pole[0],pole[1]) +\
             "/*"
      resfiles += glob.glob(path)

  #print(resfiles)
  # prepare list of non-trivial integrand files
  goodfiles = []
  results = []
  for file in resfiles:
    #print(file)
    with open(file) as fh:
      content = fh.readlines()
      if content[0] != "0\n":
        goodfiles.append(file)
        filelist = file.split("/")
        #print(filelist)
        resfilename = "{0}_{1}{2}_{3}".format(
                            filelist[-4].replace("int","res"),
                            filelist[-2].split("_")[3],
                            filelist[-2].split("_")[4],
                            filelist[-3])
        results.append(resfilename)

  resset = set(results)

  print(len(resset))
  #funcset = set(functions)
  #with open("../libint/integrals.dat") as fh:
  #  content = fh.readlines()
  #  intset = set([x.strip(string.whitespace) for x in content])

  #print(intset-funcset, set())
