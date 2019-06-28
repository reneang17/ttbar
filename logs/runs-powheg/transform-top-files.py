#!/usr/bin/env python3
#
# todo:
#

import argparse
import string
import os
import stat
import subprocess

parser =  argparse.ArgumentParser()
parser.add_argument("topfile",
                    help=".top Powheg file to be transformed to .res file")
args = parser.parse_args()

#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  observables = ["logptttbar", "ptttbar", "total"]
   
  # --- from .top to .mine ----------------------------------------
  myfile = "{0}.mine".format(args.topfile.rstrip(".top"))
  command ="top2mine.py -f {0} > {1}".format(args.topfile, myfile)
  subprocess.check_call(command, shell=True)

  # --- block extraction for each observable ----------------------
  for observable in observables:
    datfile = "{0}.dat".format(myfile.strip(".mine")) 
    if   observable == "logptttbar": name = "ttbar logpt logptttb"
    elif observable == "ptttbar":    name = "ttbar pt ptttb"
    elif observable == "total":      name = "total ptttb"
    command = "rmblock.py -s 'BOTTOM \" {2}> 0' -e HIST -b  \
               -f {0} | grep -v \"\#\" > {1}".format(myfile, datfile,name)
    subprocess.check_call(command, shell=True)

    # --- adjusting to format of combine runs error ----------
    resfile = "{0}_{1}.res".format(myfile.rstrip(".mine"),observable) 
    # determine bin size
    if observable != "total":
      with open(datfile) as fh:
        tmpcontent = fh.readlines()
        bsz = abs(float(tmpcontent[0].split()[0])-float(tmpcontent[1].split()[0]))
    else:
      bsz = 0.5

    # form and write down histograms
    with open(datfile) as fin, open(resfile,"w") as fout:
      content = fin.readlines();
      content = [x.strip(string.whitespace).split(" ") for x in content]
      for line in content:
        if len(line) > 1: line = [float(x) for x in line]
        else: continue
        newline = "{0:.2f} {1:.2f} {2:.2f} {3:.2f} {4:.2f} {5:.2f} {6} {7}\n".\
                  format(line[0]-bsz/2,0,line[0],0,line[0]+bsz/2,0,line[1],line[2])
        fout.write(newline)

      print("Writing {0} ...".format(resfile))

  # --- remove .mine and .dat files ------------------------
  os.remove(myfile)
  os.remove(datfile)


