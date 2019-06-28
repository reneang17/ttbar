#!/usr/bin/env python

import argparse
import string
import re
import glob
import math
import os

parser =  argparse.ArgumentParser()
parser.add_argument("prefix", help="prefix of files to merge, like res14_00_int13")
parser.add_argument("--save", action="store_true", help="save result to files")
parser.add_argument("--suffix", help="suffix of files to merge, like be0.95th0.7.dat", default="")
args = parser.parse_args()


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  try:
    resfiles = glob.glob(args.prefix+"*"+args.suffix)

    print(args.prefix, len (resfiles), "files")
    
    sumres = 0
    sumerr = 0
    for file in resfiles:
      if file.find("comb") > -1: continue
      file_size = os.path.getsize(file)
      if file_size == 0: raise OSError(file)
      with open(file) as fh: 
        content = fh.readlines()
        reslist = content[-1].split()
        sumres += float(reslist[2])
        sumerr += pow(float(reslist[4]),2)
    sumerr = math.sqrt(sumerr)
    outcontent = "{0}result = {1}  +/- {2}\n".format(content[0], sumres, sumerr)

    fnamelist = resfiles[0].split("_")
    fname = "_".join(fnamelist[0:3]+ ["comb_6",fnamelist[-1]])
    print(fname)

    if args.save: 
      with open(fname, "w") as fh: fh.write(outcontent)
    else:
      print(outcontent)
  except (OSError) as err:
    print("ERROR: one of the files has zero size.", err)

