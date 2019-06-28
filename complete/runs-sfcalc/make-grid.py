#!/usr/bin/env python

import argparse
import string
import re
import glob
import math
import os

parser =  argparse.ArgumentParser()
#parser.add_argument("prefix", help="prefix of files to merge, like res14_00_int13")
#parser.add_argument("--save", action="store_true", help="save result to files")
#parser.add_argument("--suffix", help="suffix of files to merge, like be0.95th0.7.dat", default="")
args = parser.parse_args()


integrals = ["rescol13_05_int11", "rescol13_05_int12", "rescol13_05_int13",
"rescol13_05_int14", "rescol13_05_int15", "rescol13_05_int16",
"rescol13_05_int19", "rescol13_05_int1", "rescol13_05_int20",
"rescol13_05_int3", "rescol13_05_int4", "rescol13_05_int5", "rescol13_05_int7",
"rescol13_05_int9", "rescol14_05_int11", "rescol14_05_int12",
"rescol14_05_int13", "rescol14_05_int14", "rescol14_05_int15",
"rescol14_05_int16", "rescol14_05_int19", "rescol14_05_int20",
"rescol14_05_int3", "rescol14_05_int4", "rescol33_05_int1", "rescol33_05_int2",
"rescol34_05_int10", "rescol34_05_int11", "rescol34_05_int14",
"rescol34_05_int1", "rescol34_05_int3", "rescol34_05_int4", "rescol34_05_int5",
"rescol34_05_int6", "rescol1313_05_int2", "rescol1314_05_int1",
"rescol1314_05_int2", "rescol1314_05_int3", "rescol1314_05_int4",
"rescol1333_05_int1", "rescol1333_05_int2", "rescol1333_05_int3",
"rescol1333_05_int4", "rescol1334_05_int1", "rescol1334_05_int2",
"rescol1414_05_int2", "rescol1433_05_int1", "rescol1433_05_int2",
"rescol1433_05_int4", "rescol1434_05_int1", "rescol1434_05_int2",
"rescol3333_05_int1", "rescol3333_05_int2", "rescol3334_05_int1"]

#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  rebeth = re.compile('be([\d]*\.[\d]*)th([\d]*\.[\d]*)')
  #reres  = re.compile('result = ([^+]*)')

  try:
    for integral in integrals:
      resfiles = glob.glob(integral+"_comb_6*")
      size = math.sqrt(len(resfiles))
      outname = integral.replace("res", "grid") + ".dat"
      contentlist = []
      for resfile in resfiles:
        beth = rebeth.findall(resfile)[0]
        with open(resfile) as fh: 
          content = fh.readlines()
          reslist = content[-1].split()
          res = float(reslist[2])
          err = float(reslist[4])
          reslist = [beth[0], beth[1], res, err]
          contentlist.append(reslist)
      with open(outname,"w") as fh:
        print(outname)
        counter = 1
        for line in sorted(contentlist):
          fh.write("{0} {1} {2} {3}\n".format(*line))
          if counter % size == 0: fh.write("\n")
          counter += 1 

  except (OSError) as err:
    print("ERROR: one of the files has zero size.", err)

