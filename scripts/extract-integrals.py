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
'''Return list of unqique integral found in reduction output.'''
)
parser.add_argument("file",\
                    help = ("input file"))
parser.add_argument("--regular", "-r", action = "store_true",
                    help=("print integrals in nicer format"))
args = parser.parse_args()

#-----------------------------------------------------------------------------
# Remove FORM-specific lines and whitespaces
def clean_content(line):

  if "FORM" in line or \
     "#"    in line or \
     "="    in line or \
     "sec out of" in line:
    return ""

  return line.strip(string.whitespace).strip(";")

#-------------------------------------------------------------------------------
# Extract unique integrals from the content
def extract_integrals(content):

  newcontent = content
  integrals_re = re.compile('I\(([^\)]*)\)')
  #integrals_re = re.compile('(I\([^\)]*\))')
  integrals_search = integrals_re.search(content)

  all_integrals = integrals_re.findall(content)
  unique_integrals = set(all_integrals)

  #return all_integrals
  return unique_integrals

#-------------------------------------------------------------------------------
def regular_form(integral):

  val = ""
  for i in integral.split(","):
    nmin = i.count("-")
    val += "{0}{1}".format(" "*(2-nmin), i)
    
  return val

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  content = ""
  with open(args.file) as fh:
    for line in fh.readlines():
      content += clean_content(line)
  for integral in extract_integrals(content):
    if args.regular:
      print(regular_form(integral))
    else:
      print(integral)
