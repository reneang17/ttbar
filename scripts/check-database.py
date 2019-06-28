#!/usr/bin/env python3
#
# todo:
#

import argparse
import string
import pickle
import re
import pyIdSolver

parser =  argparse.ArgumentParser(description=
"""
""", formatter_class=argparse.RawTextHelpFormatter)
parser.add_argument("file",
                    help="file with list of prototypes")
args = parser.parse_args()

#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':


  #-----------------------------------------------------------------------------
  # read general list of prototype objects
  prototype_list = pyIdSolver.read_prototype_list("prototypes.pickle")

  #-----------------------------------------------------------------------------
  # read list of prototypes from input file
  input_prototypes = []
  with open(args.file) as fh:
    proto_re = re.compile('PR(\d+)\(([^\)]*)\)')
    input_prototypes = proto_re.findall(fh.read())

  # for each prototype found in the input file, check if its number of positive
  # indices agrees with that in the database of prototypes
  for proto in input_prototypes:
    # number of prototype from input file
    num_input = int(proto[0]) 
    # indices of prototype from input file
    indices_input = [int(x) for x in proto[1].split(",")]
    # prototype from the database
    proto_list = prototype_list[num_input]
    nden_db = proto_list.nden()
    nden_input = sum(1 for x in indices_input if x > 0)
    if nden_db != nden_input:
      print("Problem with prototype PR{0}({1}) in database {2}!".\
            format(num_input, ",".join([str(x) for x in indices_input]), args.file))
