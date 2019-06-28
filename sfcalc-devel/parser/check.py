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


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  # get list of int directories
  with open("input.dat") as fh:
    content = fh.read()
    dirs = re.findall(r'[^\#]\[dirs\+\] ([^e]*)', content)[0]
    dirs = dirs.split()
    poles = re.findall(r'\[poles\] (\d+)', content)[0]
  
  
  # get list of integralnd files
  resfiles = []
  for dir in dirs:
    path = args.sfcalcdir+"/"+dir +\
           "/*/int*_ap_ep_{0}_{1}_C".format(poles[0],poles[1]) +\
           "/*"
    resfiles += glob.glob(path)

  # prepare list of non-trivial integrand files
  goodfiles = []
  functions = []
  for file in resfiles:
    with open(file) as fh:
      content = fh.readlines()
      if content[0] != "0\n":
  #    if content[0] != "0":
        goodfiles.append(file)
        filelist = file.split("/")
        #print(filelist)
        funcname = "{0}_{1}_ap{2}_ep{3}".format(filelist[-4],
                            filelist[-1].rstrip(".dat"),
                            filelist[-2].split("_")[3],
                            filelist[-2].split("_")[4])
        functions.append(funcname)

  funcset = set(functions)
  with open("../libint/integrals.dat") as fh:
    content = fh.readlines()
    intset = set([x.strip(string.whitespace) for x in content])

  print(intset.difference(funcset))
  print(len(funcset))
  print(len(intset))
  #print(intset-funcset, set())
