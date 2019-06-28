#!/usr/bin/env python3
#
# Test various aspects of the Prototype class from pyIdSover.
#

import argparse
import string
import pyIdSolver

parser =  argparse.ArgumentParser()
args = parser.parse_args()

#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  prototype_list = pyIdSolver.read_prototype_list("prototypes.pickle")


  protostr_list = ["PR7(1,1,1,1,0,0,0,0,0,0,0,0,0,0,-1,0)",
                   "PR40(1,1,1,-1,-1,0,0,0,0,0,0,0,0,0,0,0)",
                   "PR40(2,2,1,1,1,0,0,0,0,0,0,0,0,0,0,0)"]

  for protostr in protostr_list:
    number  = pyIdSolver.prototype_number_from_protostr(protostr) 
    indices = pyIdSolver.prototype_indices_from_protostr(protostr)
    print(protostr)
    print(indices, prototype_list[number].integral(indices))




