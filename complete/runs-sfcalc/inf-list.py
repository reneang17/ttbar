#!/usr/bin/env python

import argparse
import string
import re
import glob
import math
import os.path

parser =  argparse.ArgumentParser()
parser.add_argument("file", help="file with res comb files that return inf")
args = parser.parse_args()


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':


  with open(args.file) as fh: 
    content = fh.readlines()

  slu_list = []
  for entry in content:
    res_files = entry.split(".dat")[0].replace("comb_6","[1-9]*_?*")+".dat"
    slu_files = res_files.replace("res","slu").replace("dat", "batch")

    files = glob.glob(slu_files)
   
    slu_list.extend(files)
 
  for entry in slu_list:
    print(entry)
