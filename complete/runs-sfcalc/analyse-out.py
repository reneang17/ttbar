#!/usr/bin/env python

import argparse
import string
import re
import glob
import math
import subprocess

parser =  argparse.ArgumentParser()
parser.add_argument("-l", "--long", action= "store_true", help="long format")
args = parser.parse_args()

def process_time(tlist) :

  if len(tlist) == 0: return 6000
  else: 
    outform = tlist[0].strip("s").split("m")
    return int(outform[0])

#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  outfiles = glob.glob("*.out")

  allres = []
  for file in outfiles:
    with open(file) as fh:
      content = fh.read()
      name = re.findall(r'outfile: (.*)', content)[0]
      user = re.findall(r'user\s(.*)', content)
      real = re.findall(r'real\s(.*)', content)
      result = re.findall(r'\[1\]\s([^+]* \+\- [^\s]*)', content)[-1]
      result = [name, process_time(real), process_time(user), result]
      allres.append(result)

  finallist = sorted(allres, key=lambda entry: entry[1]) 
  #print(finallist)
  for entry in finallist:
    line = "{0:<37} {1:>5} h  {2:>4} h  {3} ".\
          format(entry[0], entry[1]/60, entry[2]/60, entry[3]).replace("+","+/")
    if args.long:
      command = "squeue -n {0}".format(entry[0].replace("rescol","slucol").replace("dat","batch"))
      squeueout = subprocess.check_output(command,shell=True).decode("utf-8").strip(string.whitespace).split()
      if len(squeueout) > 8:
        line += "  {0}  {1}".format(squeueout[-3], squeueout[8])
    print(line)    





