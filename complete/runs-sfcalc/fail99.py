#!/usr/bin/env python

import argparse
import string
import re
import glob
import math
import subprocess
import shutil

parser =  argparse.ArgumentParser()
parser.add_argument("--save", action="store_true", help="save result to files")
parser.add_argument("--slu", action="store_true", help="show slu files to rerun")
parser.add_argument("--col", action="store_true", help="show slu files to rerun")
args = parser.parse_args()


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  resfiles = glob.glob("res*.dat")

  files = dict()
  for file in resfiles:
    try:
      with open(file) as fh:
        content = fh.read()
        fail = int(re.findall(r'fail = ([\-\d]*)', content)[0])
      if fail == -99:
        command = "grep -l {0} *.out".format(file)
        outfile = subprocess.check_output(command,shell=True).decode("utf-8").strip(string.whitespace)
        files[file] = outfile
    except IndexError:
     continue

  for resfile, outfile in files.items():
    if args.slu:
      print "slu"+resfile.lstrip("res").rstrip("dat")+"batch"
    elif args.col:
      print resfile.lstrip("res")

    #print("+++")
    #print(outfile)
    #print("---")
    with open(outfile) as fh:
      content = fh.read()
      resstr = re.findall(r'\[1\] ([^c]*)', content)[-1].replace("+-","+/-")
      print resfile, outfile, resstr
     
    if args.save:
      shutil.copyfile(resfile,"bak"+resfile)
      with open(resfile, "w") as fh:
        print(resfile)
        fh.write("# fixed by fail99.py\n")
        fh.write("result = {0}".format(resstr))

