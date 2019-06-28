#!/usr/bin/env python3
#
# todo:
#

import argparse
import multiprocessing
import os
import pickle
import re
import string
import pyIdSolver

parser =  argparse.ArgumentParser(
formatter_class=argparse.RawTextHelpFormatter,\
description = \
'''Represent integrals in a human readable form.

Output formats:

tidy: clear columns with powers of propagators

'''
)
parser.add_argument("file",\
                    help = ("input file"))
parser.add_argument("format", 
                    choices = ["tidy", ],
                    help="output format")
args = parser.parse_args()


#-----------------------------------------------------------------------------
def get_num_den_lists(integral):

  numlist = []
  denlist = []
  for i in range(0,len(integral)):
    power = integral[i]
    propnum = i+1
    if power == -1: numlist.append("P{0}".format(propnum))
    if power < -1:  numlist.append("P{0}^{1}".format(propnum,-power))
    if power == 1:  denlist.append("P{0}".format(propnum))
    if power > 1:   denlist.append("P{0}^{1}".format(propnum,power))

  if len(numlist) == 0: numlist.append("1")

  return (numlist,denlist)

#-----------------------------------------------------------------------------
def represent_integrals1(numdentuple):

  numstr = " ".join(numdentuple[0])
  denstr = " ".join(numdentuple[1])

  #denstr = " ".join(denlist[:-3])

  #if denstr != "P4 P11 P14 P15 P16": return
  integral_orig = ",".join([str(x) for x in integral])
  space = len(integral_orig) + 5
  print(" "*space, numstr)
  print(integral_orig," = ", "-"*max(len(numstr), len(denstr)))
  print(" "*space, denstr)
  print()


#-----------------------------------------------------------------------------
# Mathematica format
def represent_integrals2(numdentuple):

  numstr = " ".join(numdentuple[0])
  denstr = " ".join(numdentuple[1][:-3])

  #if denstr != "P4 P11 P14 P15 P16": return
  integral_orig = ",".join([str(x) for x in integral])
  space = len(integral_orig) + 5

  outstr = "{0}/({1})".format(numstr,denstr)

  return outstr


#-------------------------------------------------------------------------------
def print_in_tidy_form(integrals):

  nprop = len(integrals[0])
  labels = ["a{0}{1}".format(i, " "*(2-len(str(i)))) for i in range(1,nprop+1)]
  header =  " ".join(labels)

  print("-"*len(header))
  print(header)
  print("-"*len(header))

  for integral in integrals:
    #print(integral)
    val = ""
    for i in integral:
      nmin = 1 if i<0 else 0
      val += "{0}{1}".format(" "*(3-nmin), i)
    print(val[2:])


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  
  integrals = []
  results = []
  
  with open(args.file) as fh:
    for line in fh.readlines():
      liststr = line.strip(string.whitespace).split(",")
      listint = [int(x) for x in liststr]
      integrals.append(listint)
    
 
  if args.format == "tidy":
    print_in_tidy_form(integrals)
  else:
    for integral in integrals:
      numdenlists = get_num_den_lists(integral)
      results.append(represent_integrals2(numdenlists))

    print("{{{0}}}".format(",".join(results)))
