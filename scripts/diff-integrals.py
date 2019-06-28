#!/usr/bin/env python3
#
# todo:
#

import argparse
import os
import string
import subprocess

parser =  argparse.ArgumentParser(description=
"""
Compare two files with integrals/prototypes and print differences

Example:

  $ ./diff-integrals.py .tmp_257_masters1 .tmp_257_masters2
  
""", formatter_class=argparse.RawTextHelpFormatter)
parser.add_argument("file1", \
                    help="first file with list of integrals")
parser.add_argument("file2", \
                    help="second file with list of integrals")
args = parser.parse_args()


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':


  #### unsuccesful version with sets, why?
  #list1 = []
  #list2 = []
  #with open(args.file1) as fh1:
  #  list1 = [x.strip(string.whitespace) for x in fh1.readlines()]
  #with open(args.file2) as fh2:
  #  list2 = [x.strip(string.whitespace) for x in fh2.readlines()]

  #print(set(list1)-set(list2))
  

  tmp1 = ".tmp_sort1"
  tmp2 = ".tmp_sort2"

  # sort file1
  command = "integrals-to-prototypes.py {0} | sort > {1}".format(args.file1, tmp1)
  subprocess.check_call(command, shell=True)

  # sort file2
  command = "integrals-to-prototypes.py {0} | sort > {1}".format(args.file2, tmp2)
  subprocess.check_call(command, shell=True)


  commandlist=["diff", tmp1, tmp2]
  p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  out, err = p.communicate()
  output = out.decode("utf-8")
  p.wait()

  print(output.strip(string.whitespace))

  os.remove(tmp1)
  os.remove(tmp2)
