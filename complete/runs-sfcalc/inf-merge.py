#!/usr/bin/env python

import argparse
import string
import glob
import os.path
import subprocess

parser =  argparse.ArgumentParser()
parser.add_argument("file", help="file with res comb files that return inf")
parser.add_argument("--save", action="store_true", help="save result to files")
args = parser.parse_args()


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':


  with open(args.file) as fh: 
    content = fh.readlines()

  try:
    for entry in content:
      res_files = entry.split(":result")[0].strip(string.whitespace)
      prefix, suffix = res_files.split("comb_6_")
      command = "./merge-results.py {0} --suffix {1}".format(prefix, suffix)
      if args.save: command += " --save"
      print(command)
      output = subprocess.check_output(command,shell=True).decode("utf-8")
      if "ERROR" in output: raise Exception
      print(output)
  except (Exception) as err:
    print("ERROR", err)
