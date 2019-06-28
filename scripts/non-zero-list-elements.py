#!/usr/bin/env python3
import sys
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("--positive", "-p",nargs="+", default = [],
                    help=("exclude integrals with given non-positive indices"))
args = parser.parse_args()

# usage:
#
#  cat flatfulllist.dat | ./scripts/non-zero-list-elements.py
#
# where flatfulllist.dat was produced by ../nnlo-prep.m

positive_propagator_list = []

# ------------------------------------
# list of strings to list of integers
def list_str2int (mylist):
  tmplist = []
  for element in mylist:
    tmplist.append(int(element))
  return tmplist

def check_positivity(integral):
  for index in positive_propagator_list:
    if integral[index-1] <= 0: return False
  return True

# ------------------------------------
if len(args.positive) > 0:
  positive_propagator_list = list_str2int(args.positive)

# ------------------------------------
data = sys.stdin.readlines()
for line in data:
  integral = line.split()
  num_non_zero = 0
  num_pos = 0
  int_integral = list_str2int(integral)
  # skip if one of the cut propagators does not appear
  if not check_positivity(int_integral): continue
  for element in int_integral :
    if element != 0:
      num_non_zero += 1
    if element > 0:
      num_pos += 1

  print("{0:<50} tot: {1}, pos: {2}".format(int_integral, num_non_zero, num_pos))
