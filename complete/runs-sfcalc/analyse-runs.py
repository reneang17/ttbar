#!/usr/bin/env python

import argparse
import string
import re
import glob
import math

parser =  argparse.ArgumentParser()
parser.add_argument("--save", action="store_true", help="save result to files")
args = parser.parse_args()


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  resfiles = glob.glob("res*.dat")

  run_vegas = ""
  run_cuhre = ""
  for file in resfiles:
    if file.find("comb") > 0 : continue
    try:
      with open(file) as fh: 
        content = fh.read()
        result = float(re.findall(r'result = ([^+]*)', content)[0])
        fail = int(re.findall(r'fail = (\d)', content)[0])
        if math.isnan(result) or math.isinf(result):
          run_vegas += "{0}\n".format(file)
        elif fail:
          run_cuhre += "{0}\n".format(file)
    except IndexError:
     continue

  print("Cuhre:")
  print(run_cuhre)
  print("Vegas:")
  print(run_vegas)

  if args.save:
    with open("runvegas", "w") as fh: fh.write(run_vegas.replace("res","int"))
    with open("runcuhre", "w") as fh: fh.write(run_cuhre.replace("res","int"))

