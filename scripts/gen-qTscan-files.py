#!/usr/bin/env python3

import string
import os
import math
import stat
import argparse



#------------------------------------------------------------------------------
# options
parser = \
argparse.ArgumentParser(usage="\n   %(prog)s [mcfm|topqT] [ddbar|qqbar|gg|dg|all] seedmin seedmax")
parser.add_argument("prog", help="program: mcfm|topqT")
parser.add_argument("type", help="type of calculation: ddbar|qqbar|all")
parser.add_argument("seeds", type = int,\
                    help="seed range specified in the format seedmin, seedmax", nargs=2)
args = parser.parse_args()

#------------------------------------
# read seeds
seeds = []
with open("seeds.txt") as fh:
  seeds = [int(x) for x in fh.read().strip(string.whitespace).split(",")]

#seeds = [pow(10,x) for x in range(0,20)]

#------------------------------------
# generate list of qTs
qTlist = []
Nmax = 10
logqTminMIN = -2.0
logqTminMAX = 0.0
#for i in range(3,4):
#for i in range(0,Nmax+1):
for i in range(0,1):
  qT = math.exp(logqTminMIN + (logqTminMAX-logqTminMIN)*i/Nmax)
  qTlist.append("{0:.3f}".format(qT))

print("\nSettings: Nmax = {0}, logqTMIN = {1}, logqTMIN = {2}\n".\
      format(Nmax,logqTminMIN,logqTminMAX ))
print("Seed range: [{0},{1}]\n".format(args.seeds[0],args.seeds[1]))


#------------------------------------
# construct and write input file and batch files
if args.prog == "mcfm":
  templatename_input = "template-input-ttjLO{0}qTmin.DAT".format(args.type)
  templatename_batch = "template-batch-ttjLO{0}qTmin.DAT".format(args.type)
elif args.prog == "topqT":
  templatename_input = "template-input-{0}LOrealqTmax.dat".format(args.type)
  templatename_batch = "template-batch-{0}LOrealqTmax.dat".format(args.type)
with  \
     open(templatename_input) as intemplatefile,\
     open(templatename_batch) as batchtemplatefile:
  contentin    = intemplatefile.read()
  contentbatch = batchtemplatefile.read()
  #
  for qTmin in qTlist:
    for iseed in range(args.seeds[0],args.seeds[1]+1):
        runstr = "{0}qTmin{1}seed{2}".format(args.type,qTmin,iseed)
        infname = "{0}{2}runseed{3}.{1}".format(*templatename_input.lstrip("template-").split("."),qTmin,iseed)
        #-----------------------------------------------------------------------
        # --- input file -------------------------------------------------------
        #-----------------------------------------------------------------------
        newcontentin = contentin.replace("QTMIN",qTmin).\
                                 replace("RUNSTR",runstr).\
                                 replace("SEED",str(seeds[iseed]))
        with open(infname, "w") as infile:
          infile.write(newcontentin)
        #-----------------------------------------------------------------------
        # --- batch file -------------------------------------------------------
        #-----------------------------------------------------------------------
        # --- MCFM 
        if args.prog == "mcfm":
          topfname = "tt_glu_lord_CT10.LH_173_173_{0}.top".format(runstr)
          newcontentbatch = contentbatch.replace("INFILESTR",infname).\
                                         replace("TOPFILESTR",topfname).\
                                         replace("OUTFILESTR",runstr)
        # --- topqT++ 
        elif args.prog == "topqT":
          histqT_fname  = "hist_subt_{0}_qT.dat".format(runstr)
          histM_fname   = "hist_subt_{0}_M.dat".format(runstr)
          histpt3_fname = "hist_subt_{0}_pt3.dat".format(runstr)
          histy_fname   = "hist_subt_{0}_y.dat".format(runstr)
          newcontentbatch = contentbatch.replace("INFILESTR",infname).\
                                                 replace("HISTQTSTR",histqT_fname).\
                                                 replace("HISTMSTR",histM_fname).\
                                                 replace("HISTYSTR",histy_fname).\
                                                 replace("HISTPT3STR",histpt3_fname).\
                                                 replace("OUTFILESTR",runstr)

        # write the batch file
        batchfilename = "batch-{1}-{0}.q".format(runstr,args.prog)
        with open(batchfilename, "w") as batchfile:
          batchfile.write(newcontentbatch)
          os.chmod(batchfilename, stat.S_IRWXU | stat.S_IRWXG | stat.S_IRWXO)
        oustr = "{0}  {1}".format(infname, batchfilename)
        print(oustr)
