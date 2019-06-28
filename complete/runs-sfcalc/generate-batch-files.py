#!/usr/bin/env python
#
# todo:
#
# Example usage:
#
#    $ ./generate-batch-files.py input-template.dat ../../sfcalc-devel 1 1
#
# Output:
#
#     int3333_10_int2_be0.0th0.0.dat
#             /\
#           ap  ep
#

import argparse
import string
import os
import stat
import re

parser =  argparse.ArgumentParser()
parser.add_argument("inputfile",
                    help="template sfcalc input file")
#parser.add_argument("thetaN",type=int, help="grid size in theta")
#parser.add_argument("betaN", type=int, help="grid size in beta")
parser.add_argument("beta", type=float, help="beta")
parser.add_argument("theta",type=float, help="theta")
parser.add_argument("--sfcalcdir",
                    help="directory with your sfcalc installation", 
                    default ="../../sfcalc-devel")
parser.add_argument("--all", action="store_true", dest="all",
                    help="generate also non-comb files")
parser.add_argument("--batch", action="store_true", dest="batch",
                    help="produce batch files")
parser.add_argument("--power", help="power of alpha and epsilon, e.g. 00, 01", default = "all")
args = parser.parse_args()

#-----------------------------------------------------------------------------
# (beta, theta) grid
#-----------------------------------------------------------------------------
beta_limits = [0.0,0.99]
theta_limits = [0.0,3.14159]
beta_values = [args.beta]
theta_values = [args.theta]

#if args.betaN == 0 and args.thetaN == 0:
#  beta_values = [0.0]
#  theta_values = [0.0]
#else:
#  beta_values = [beta_limits[0]+ (beta_limits[1]-beta_limits[0])/args.betaN*i \
#                 for i in range(0,args.betaN+1)]
#  theta_values=[theta_limits[0]+ \
#               (theta_limits[1]-theta_limits[0])/args.thetaN*i \
#               for i in range(0,args.thetaN+1)]

#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  # read the list of integrals
  with open(args.sfcalcdir+"/libint/integrals.dat") as fh:
    intlist = fh.read().split()

  with open(args.inputfile) as fh:
    incontent = fh.read()
    infname = args.inputfile.split("-")[0]
 
  # extract info for slurm
  slurmN = re.findall(r'SLUMN\s+(\d+)', incontent)[0]
  slurmCPUSPERTASK = re.findall(r'SLUMCPUSPERTASK\s+(\d+)', incontent)[0]
  slurmTIME= re.findall(r'SLUMTIME\s+(\d+:\d+:\d+)', incontent)[0]

  #print(slurmTIME)

  # loop over beta, theta and all integrals from integrals.dat
  for beta in beta_values:
    for theta in theta_values:
      print(beta,theta)
      for integral in intlist:
        if ("comb" not in integral) and (not args.all): continue
        testpow = "ap{0}_ep{1}".format(args.power[0],args.power[1])
        if (testpow not in integral) and (args.power != "all"): continue
        #if not args.all:
        # ----------------------------------------------------------------------
        # input file
        # ----------------------------------------------------------------------
        name = integral.split("ap")[0].rstrip("_")
        namelist = integral.split("_")
        poles = namelist[-2].lstrip("ap") + " " + namelist[-1].lstrip("ep")
        namelist = name.split("_int")
        dim = name.split("_")[-1]
        if int(dim) < 5: method = "Cuhre"
        else: method = "Vegas"
        #print(name, namelist, poles)
        suffix  = "{0}_{1}_int{2}_be{3:.6}th{4:.6}.dat".\
                  format(namelist[0], poles.replace(" ",""), namelist[1], 
                         beta, theta)
        content = incontent.replace("THETA", str(theta))
        content = content.replace("BETA", str(beta)).\
                          replace("INTNAME", name).\
                          replace("METHOD", method).\
                          replace("INTDIM", dim).\
                          replace("APEP", str(poles)).\
                          replace("OUTFILE", "res"+str(suffix).lstrip("int"))
        infile = "{0}".format(suffix)
        print infile
        with open(infile, "w") as fh: fh.write(content)

        # ----------------------------------------------------------------------
        # slurm file
        # ----------------------------------------------------------------------
        if args.batch:
          slurmcontent ="#!/bin/bash -l \n\n" +\
                    "#SBATCH -p plgrid\n"+ \
                    "#SBATCH --mail-user sebastian.sapeta@ifj.edu.pl\n"+ \
                    "#SBATCH --mail-type ALL\n"+ \
                    "#SBATCH -t {0}\n".format(slurmTIME)+\
                    "#SBATCH -N {0}\n".format(slurmN)+\
                    "#SBATCH --cpus-per-task={0}\n\n".format(slurmCPUSPERTASK)+\
                     "time ./sfcalc {0}\n".format(infile)
          slurmfile =  \
              "{0}".format("slu"+suffix.lstrip("int").rstrip(".dat")+".batch")

          with open(slurmfile, "w") as fh: fh.write(slurmcontent)

