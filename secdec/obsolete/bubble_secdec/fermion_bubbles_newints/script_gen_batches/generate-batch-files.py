#!/usr/bin/env python
#
# todo:
#

import argparse
import string
import os
import stat

parser =  argparse.ArgumentParser()
parser.add_argument("inputfile",
                    help="template Powheg input file")
args = parser.parse_args()

# hard-coded values

beta_limits = [0.0,0.9]
beta_N      = 3
beta_values = [beta_limits[0]+ (beta_limits[1]-beta_limits[0])/beta_N*i \
               for i in range(0,beta_N+1)]+[0.9]

poles_values = ["1 1","1 0","0 1","0 0"]
theta_fixed  = 0.7853975
beta_fixed   = 0.9

theta_limits = [0.0,3.14159]
theta_N      = 2
theta_values = [theta_limits[0]+ (theta_limits[1]-theta_limits[0])/theta_N*i \
               for i in range(0,theta_N+1)]

#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  with open(args.inputfile) as fh:
    incontent = fh.read()
    infname = args.inputfile.split("-")[0]
    print(infname)

  # ----------------------------------------------------------------------------
  # fixed theta 
  # ----------------------------------------------------------------------------
  for beta in beta_values:
    for poles in poles_values:
      suffix  = "{0}beta{1:.2}.dat".format(poles.replace(" ",""),beta)
      content = incontent.replace("THETA", str(theta_fixed))
      content = content.replace("BETA", str(beta)).\
                        replace("APEP", str(poles)).\
                        replace("OUTFILE", "res"+str(suffix))
  
      infile = "{0}-{1}".format(infname,suffix)
      print infile
      with open(infile, "w") as fh: fh.write(content)

  # ----------------------------------------------------------------------------
  # fixed beta
  # ----------------------------------------------------------------------------
  for theta in theta_values:
    for poles in poles_values:
      suffix  = "{0}theta{1:.6}.dat".format(poles.replace(" ",""),theta)
      content = incontent.replace("BETA", str(beta_fixed))
      content = content.replace("THETA", str(theta)).\
                        replace("APEP", str(poles)).\
                        replace("OUTFILE", "res"+str(suffix))
  
      infile = "{0}-{1}".format(infname,suffix)
      print infile
      with open(infile, "w") as fh: fh.write(content)
