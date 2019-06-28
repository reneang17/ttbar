#!/usr/bin/env python

import argparse
import string
import re
import glob
import math
import os.path

parser =  argparse.ArgumentParser()

#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':


  missing_file_list = []
  col_files = glob.glob("col*comb*.dat")

  print len(col_files), "col files"

  for col_file in col_files:
    res_file = col_file.replace("col","rescol")
    if not os.path.isfile(res_file): missing_file_list.append(res_file)

  if len(missing_file_list) == 0:
    print("The set of result files is complete.")
  else:
    for file in missing_file_list:
      print file
 
 

