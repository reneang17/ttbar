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
'''Translate reduction output to Mathematica form.'''
)
parser.add_argument("file",\
                    help = ("input file"))
parser.add_argument("--masters","-m", action="store_true",\
                    help = ("print masters"))
args = parser.parse_args()

#-----------------------------------------------------------------------------
# Remove FORM-specific lines
def clean_content(line):

  if "FORM" in line or \
     "#"    in line or \
     "="    in line or \
     "sec out of" in line:
    return ""

  return line.strip(string.whitespace).strip(";")

#-------------------------------------------------------------------------------
# Replace I(...) by G[...]
def replace_integrals(content):

  newcontent = content
  masters_re = re.compile('I\(([^\)]*)\)')
  masters_search = masters_re.search(content)

  all_masters = masters_re.findall(content)
  unique_masters = set(all_masters)

  for integral in all_masters:
    newcontent = newcontent.\
                 replace("I({0})".format(integral), "G[{0}]".format(integral))

  return (newcontent, unique_masters)

#-----------------------------------------------------------------------------
# Replace M() with ??? Unfinished.
def replace_integrals2(content):

  newcontent = content
  masters_re = re.compile('(M\d+)')
  masters_search = masters_re.search(content)

  all_masters = masters_re.findall(content)
  unique_masters = set(all_masters)

  for integral in unique_masters:
   newcontent = newcontent.replace("{0}".format(integral), \
                                   "M[[{0}]]".format(integral.strip("M")))

  return (newcontent, unique_masters)

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  #-----------------------------------------------------------------------------
  content = ""
  with open(args.file) as fh:
    for line in fh.readlines():
      content += clean_content(line)

  res = replace_integrals2(content)
  if args.masters:
    #names = range(0,len(res[1]))
    names = ["M{0}".format(i) for i in range(0,len(res[1]))]
    for master, name in zip(res[1], names):
      print("id I({0}) = {1};".format(master, name))
    print(" ".join(names))
  else:
    print(res[0])

    
