#!/usr/bin/env python
#
# List batch files that need to be rerun because corresponding databases 
# do not exist.


import argparse
import os
import string
import subprocess

parser =  argparse.ArgumentParser()
parser.add_argument("--nproto", "-n", type=int, help="number of prototypes")
parser.add_argument("file", help="file with prototype numbers")
args = parser.parse_args()

#-----------------------------------------------------------------------------
def check_two_db_files(i):

  idfile  = os.path.abspath("idPR{0}.dat".format(i))
  incfile = os.path.abspath("PR{0}inc.dat".format(i))

  idexists  = os.path.isfile(idfile)
  incexists = os.path.isfile(incfile)

  if idexists:
    if incexists: return 1
    elif not incexists: return -1

  return 0


#-----------------------------------------------------------------------------
if __name__ == '__main__':

  proto_list = []
  #### check databases from 0 to nproto
  ###if args.nproto:  proto_list = range(0,args.nproto)
  #### check databases for prototypes from input file
  ###elif args.file:
  with open(args.file) as fh:
    proto_list = [int(x) for x in fh.read().split()]

  # print batch files
  for i in proto_list:
    infostr = "{0}".format(i)
    if check_two_db_files(i) == 0:
      print(infostr)
    elif check_two_db_files(i) == 0:
      print(infostr+" failed")
#      command = "ls batch-PR{0}-* ".format(i)
#      subprocess.check_call(command, shell=True)
