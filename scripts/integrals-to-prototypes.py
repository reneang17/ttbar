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
'''Translate integrals from the file 'integrals_orig' to prototype notation.'''
)
parser.add_argument("file",\
                    help = ("input file"))
parser.add_argument("--verbose", "-v", action="store_true", \
                    help="print more information into stdout")
parser.add_argument("--math", "-m", action="store_true", \
                    help="Mathematica replacement")
args = parser.parse_args()

#-------------------------------------------------------------------------------
def prototype_number(proto):
  proto_re = re.compile('PR(\d+)')
  n = int(proto_re.findall(proto)[0])
  return n

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#                            MAIN PART OF THE SCRIPT
#
# The program uses the following key objects:
#
# prototype_list: list of Prototype object; each prototype contains a lot of
#                 information like sector, id, name, zero sectors, sectors 
#                 with zeros and more
#
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  
  integrals = []
  
  with open(args.file) as fh:
    for line in fh.readlines():
      if line in string.whitespace: continue
      if len(line)>0 and line[0] == "#": continue
      liststr = line.strip(string.whitespace).split(",")
      listint = [int(x) for x in liststr]
      integrals.append(listint)
    
  #-----------------------------------------------------------------------------
  # read the list of prototypes from binary file
  #-----------------------------------------------------------------------------
  try:
    pickleFileName = "prototypes.pickle"
    with open(pickleFileName, 'rb') as fh:
      prototype_list = pickle.load(fh)
  except FileNotFoundError as err:
    print("Error: File '{0}' does not exist.".format(pickleFileName),\
          "Run 'generate-admin-files.py' first.")
    exit(1)

  #-----------------------------------------------------------------------------
  # Print the integrals
  #-----------------------------------------------------------------------------
  list_of_prototypes = []
  outstr = ""
  for integral in integrals:
    integralid = pyIdSolver.sectorid(integral)
    protolist = []
    for proto in prototype_list:
     if integralid ==  proto.id():
       for propi in proto.conversion_list():
         protolist.append(integral[propi-1])
       protostr = "{0}({1})".format(proto.name(), \
                    ",".join(str(e) for e in protolist))
       list_of_prototypes.append(protostr)
       if args.verbose:
         print(proto.id(), ",".join([str(x) for x in integral]), protostr)
       elif args.math:
         outstr +="G[{0}] -> {1},".format(",".join([str(x) for x in integral]),                                           protostr)
  if not args.verbose and not args.math:
    for proto in sorted(list_of_prototypes, 
                        key=lambda x: prototype_number(x)): print(proto)
  if args.math:
    print("{{{0}}}".format(outstr[:-1]).replace("(","[").replace(")","]"))
