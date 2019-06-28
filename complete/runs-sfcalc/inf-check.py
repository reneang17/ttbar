#!/usr/bin/env python

import argparse
import string
import re
import glob
import math
import os.path

parser =  argparse.ArgumentParser()
parser.add_argument("file", help="file with res comb files that return inf")
parser.add_argument("--slu", action="store_true", help="pring slu files instead of res files")
args = parser.parse_args()


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':


  with open(args.file) as fh: 
    content = fh.readlines()

  missing_file_list = []
  empty_file_list = []
  for entry in content:
    res_files = entry.split(".dat")[0].replace("comb_6","[1-9]*_?*")+".dat"
    col_files = res_files.replace("rescol","col")

    files = glob.glob(col_files)
    for col_file in files:
      res_file = col_file.replace("col","rescol")
      #print(res_file, os.path.getsize(res_file))
      if not os.path.isfile(res_file): missing_file_list.append(res_file)
      elif os.path.getsize(res_file) == 0: empty_file_list.append(res_file)
  if len(missing_file_list) != 0:
    print("Missingfiles:")
    for file in missing_file_list:
      if args.slu:
        print(file.replace("rescol","slucol").replace("dat","batch"))
      else:
        print(file)
    #print(len(missing_file_list))
  elif len(empty_file_list) != 0:
    print("Empty files:")
    for ff in empty_file_list:
      print(ff)
  else:
    print(empty_file_list)
    print("The set of result files is complete.")
 
