#!/usr/bin/env python3
#
# Test various aspects of the Master class from pyIdSover.
#

import argparse
import pickle
import string
import pyIdSolver

parser =  argparse.ArgumentParser()
args = parser.parse_args()

#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  prototype_list = pyIdSolver.read_prototype_list("prototypes.pickle")


  integrals = ["0,0,1,0,0,0,1,0,0,-2,0,0,0,1,1,1",
              "0,0,1,0,0,0,1,0,0,0,0,-2,0,1,1,1",
              "0,0,1,0,0,0,1,0,0,-1,0,-1,0,1,1,1"]

  master_list = []

  for integral in integrals:
    master_list.append(pyIdSolver.Master(integral, prototype_list))

  
  for master in master_list:
    print(master.integral(), master.protostr())

  # save masters to picle
  pickleFileName = "masters.pickle"
  with open(pickleFileName, 'wb') as fh:
    pickle.dump(master_list, fh, pickle.HIGHEST_PROTOCOL)



  with open(pickleFileName, 'rb') as fh:
    master_list = pickle.load(fh)

    masters_int = [x.integralstr() for x in master_list]
    masters_proto = [x.protostr() for x in master_list]

    for i, p in zip(masters_int, masters_proto):
      print(i, p)

