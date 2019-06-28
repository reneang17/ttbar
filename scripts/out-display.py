#!/usr/bin/env python3
#
# todo:
#

import argparse
import os
import re
import string
import subprocess

parser =  argparse.ArgumentParser(
formatter_class=argparse.RawTextHelpFormatter,\
description = \
''' Display output of reduction in various formats

  redsimp:  simplified version of reductions
  unique:   list of unique masters
  math:     Mathematica format
'''
)

parser.add_argument("file",\
                    help = ("out file from reduction"))
parser.add_argument("output",\
                    choices = ["redsimp", "unique", "math"],
                    help = ("type of the ouput"))
args = parser.parse_args()


#-------------------------------------------------------------------------------
def determine_integrals(content):

  prototypes_re = re.compile('(PR\d+\([^\)]+\))')
  return prototypes_re.findall(content)


#-------------------------------------------------------------------------------
def process_content(content):

  res = content.replace("\n","")
  res = res.replace("fill ","")
  res = res.split(";")[:-1]

  return res

#-------------------------------------------------------------------------------
def extract_equations(inlist):
  
  newlist =[]
  for element in inlist:
    newlist.append(element.split("="))

  return newlist

#-------------------------------------------------------------------------------
def represent_simplest(eqs):

  for eq in eqs:
    print("{0} -->".format(eq[0]))
    rhs = set(determine_integrals(eq[1]))
    for el in rhs:
      print("                        {0}".format(el))
    print()

#-----------------------------------------------------------------------------
def unique_masters(eqs):
  rhs = []
  for eq in eqs:
    integrals = determine_integrals(eq[1])
    for x in integrals: rhs.append(x)

  for integral in sorted(set(rhs)):
    print(integral)

#-------------------------------------------------------------------------------
def convert2mathematica(content):

  sub_re = re.compile(r'PR(\d+)\(([^\)]*)\)')
  res = sub_re.sub(r'PR\1[\2]',content)

  return res

#-------------------------------------------------------------------------------
def mathematica_format(eqs):

  res = "{"
  for eq in eqs:
    lhs = convert2mathematica(eq[0])
    rhs = convert2mathematica(eq[1])
    res +="{0} -> {1}, ".format(lhs,rhs)

  return res[:-2]+"}";

#-------------------------------------------------------------------------------
if __name__ == '__main__':

  with open(args.file) as fh:
    content = fh.read()
    res = process_content(content)
    eqs = extract_equations(res)
    
    if args.output == "redsimp":
      represent_simplest(eqs)

    if args.output == "unique":
      unique_masters(eqs)

    if args.output == "math":
      print(mathematica_format(eqs))
