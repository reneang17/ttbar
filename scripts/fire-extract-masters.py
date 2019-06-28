#!/usr/bin/env python3
#
# usage:
#
#  cat redout.dat | ./scripts/extract-masters.py
#
# where redout.dat is a file with reduction oput produced by mathematica

import sys
import argparse
import re
import types
from pyparsing import nestedExpr

parser = argparse.ArgumentParser()
parser.add_argument("--masters", "-m", action = "store_true",
                    help=("print master integrals"))
parser.add_argument("--integral", "-i", action = "store_true",
                    help=("print the main integral"))
parser.add_argument("--verbose", "-v", action = "store_true",
                    help=("verbose format"))
args = parser.parse_args()


# ------------------------------------------------
# list of strings to list of integers recurrsively
def list_str2int_rec (mylist):

  tmplist = mylist

  for i in range(0,len(tmplist)):
    if type(tmplist[i]).__name__ == 'list':
      list_str2int_rec(tmplist[i])
    else:
      tmplist[i] = int(tmplist[i].strip(","))

  return tmplist

# ------------------------------------
# get data from the file and parse nested lists
data = sys.stdin.read()
data = data.replace("},", "} ")
list = nestedExpr('{','}').parseString(data).asList()
# master integrals in raw format
masters_raw = list[0][1]

#print("---")
#for element in list[0][0]:
#  print(element)
#
#print("---")

# master integrals
if args.masters:
  if args.verbose: print("Masters:")
  master_integrals = []
  for integral in masters_raw[1:]:
    master_integrals.append(list_str2int_rec(integral))
  for master in master_integrals:
    print("{0}, {1}".format(master[0], master[1][1]))

# main inegral
if args.integral:
  if args.verbose: print("Main:")
  main_integral = list_str2int_rec(masters_raw[0])
  print(main_integral)

# reductions
