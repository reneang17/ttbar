#!/usr/bin/env python3

import argparse
import string
import re
import glob
import os

parser =  argparse.ArgumentParser()
args = parser.parse_args()


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  resfiles = glob.glob("res*.dat")

  for file in resfiles:
    try:
      with open(file) as fh:
        if os.path.getsize(file) == 0: 
          print(file, "  EMPTY")
          continue
        else:
          content = fh.read()
          tmp = re.findall(r'result = ([^\n]*)', content)
          result  = tmp[0]
          fail   = int(re.findall(r'fail = (\d)', content)[0])
          prob   = float(re.findall(r'prob = ([^\n]*)', content)[0])
      print("{0}   {1}   {2}   {3}".format(file, result, fail, prob))
    except IndexError:
     continue
