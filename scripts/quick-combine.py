#!/usr/bin/env python3

import argparse
import subprocess
import re

#------------------------------------------------------------------------------
# options
parser = \
argparse.ArgumentParser(usage="\n   %(prog)s mcfm|topqT ddbar|gg|dg|all")
parser.add_argument("prog", help="program: mcfm|topqT")
parser.add_argument("type", help="type of calculation: ddbar|gg|all")
args = parser.parse_args()

#qTmin_list=["0.135"]
qTmin_list=["0.135", "0.165", "0.202"]

#qTmin_list=["0.135", "0.165", "0.202", "0.247", "0.301", "0.368", \
#            "0.449", "0.549", "0.670", "0.819", "1.000"]

part = ""
if args.prog == "topqT": part = "subt"
elif args.prog == "mcfm": part = "real"

info_extracted=False

#------------------------------------
def adjust_min_max(name):
  seed_re = re.compile('seed(\d+)')
  command = "ls {0}".format(name)
  res = subprocess.check_output(command,shell=True).decode("utf-8")
  seeds = [int(x) for x in seed_re.findall(res)]

  return (min(seeds), max(seeds))


#-----------------------------------------------------------------------------
# total cross section
fname = "{0}_{1}.dat".format(part,args.type)
with open(fname,"w") as fh:
  for qTmin in qTmin_list:
    #------------------------------------
    # topqT
    if args.prog == "topqT":
      # total cross section
      fname =  "hist_subt_{0}qTmin{1}seed*_qT.dat".format(args.type,qTmin)
      command="grep Integral {0} | rowsum.py -c 2 -a".format(fname)
    #------------------------------------
    # mcfm
    elif args.prog == "mcfm":
      fname =  "tt_glu_lord_CT10.LH_173_173_{0}qTmin{1}seed*.top".format(args.type,qTmin)
      command="grep Cross {0} | rowsum.py -c 4 -a".format(fname)
    #------------------------------------
    # process the output
    seeds_minmax= adjust_min_max(fname)
    if not info_extracted:
      fh.write("# seed min/max: {0}/{1}\n".format(*seeds_minmax))
      info = subprocess.check_output("grep -h 'itmx\|ncall' {0}".\
             format(fname),shell=True).decode("utf-8").split("\n")[0:4]
      info = ["#"+x if x[0] != "#" else x for x in info]
      fh.write("\n".join(info)+"\n")
      info_extracted = True
    res = subprocess.check_output(command,shell=True).decode("utf-8").split()
    line = "{0} {1}\n".format(qTmin," ".join([res[i] for i in [2,4]]))
    fh.write(line)

#-----------------------------------------------------------------------------
def combine_histograms_topqT(variable):
  fname =  "hist_subt_{0}qTmin{1}seed*_{2}.dat".format(args.type,qTmin,variable)
  outfname = "{0}qTmin{1}_{2}_subt.dat".format(variable,qTmin, args.type)
  command = "ls {0} | hist-sum.py -a > {1}".format(fname,outfname)
  subprocess.check_call(command, shell=True)
  print("Writing {0}".format(outfname))

#-----------------------------------------------------------------------------
def combine_histograms_mcfm(variable):
  fname =  "tt_glu_lord_CT10.LH_173_173_{0}qTmin{1}seed*.top".format(args.type,qTmin)
  command="for i in `ls {0}`; do top2mine.py -f $i > ${{i/top/mine}}; done".format(fname)
  subprocess.check_call(command, shell=True)
  command = "for i in `ls {0}`; do mergeidx.pl \\\"{1} \\\" -f $i > ${{i/mine/dat}}; done".format(fname.replace("top","mine"), variable)
  subprocess.check_call(command, shell=True)
  outfname = "{0}qTmin{1}_{2}_real.dat".format(variable, qTmin, args.type)
  command = "ls {0}| hist-sum.py -n 3 -a > {1}".format(fname.replace("top","dat"),outfname)
  subprocess.check_call(command, shell=True)
  print("Writing {0}".format(outfname))

#-----------------------------------------------------------------------------
# histograms
for qTmin in qTmin_list:
    print(qTmin)
    #------------------------------------
    # topqT
    if args.prog == "topqT":
      combine_histograms_topqT("pt3")
      combine_histograms_topqT("M")
      combine_histograms_topqT("y")

      #fname =  "hist_subt_{0}qTmin{1}seed*_pt3.dat".format(args.type,qTmin)
      #command = "ls {0} | hist-sum.py -a > pt3qTmin{1}_subt.dat".format(fname, qTmin)
      #subprocess.check_call(command, shell=True)
    #------------------------------------
    # mcfm
    elif args.prog == "mcfm":
      combine_histograms_mcfm("pt3")
      combine_histograms_mcfm("m34")
      combine_histograms_mcfm("y34")

      #fname =  "tt_glu_lord_CT10.LH_173_173_{0}qTmin{1}seed*.top".format(args.type,qTmin)
      #command="for i in `ls {0}`; do top2mine.py -f $i > ${{i/top/mine}}; done".format(fname)
      #subprocess.check_call(command, shell=True)
      #command = "for i in `ls {0}`; do mergeidx.pl \\\"pt3 \\\" -f $i > ${{i/mine/dat}}; done".format(fname.replace("top","mine"))
      #subprocess.check_call(command, shell=True)
      #command = "ls {0}| hist-sum.py -n 3 -a > pt3qTmin{1}_real.dat".format(fname.replace("top","dat"),qTmin)
      #subprocess.check_call(command, shell=True)
