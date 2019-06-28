#!/usr/bin/env python

import math
import argparse
import sys
import subprocess

parser =  argparse.ArgumentParser()
parser.add_argument("inputfile", help="template sfcalc input file")
parser.add_argument("--sfcalcdir",
                    help="directory with your sfcalc installation",
                    default ="../../sfcalc-devel")
parser.add_argument("--all", action="store_true", dest="all",
                    help="generate also non-comb files")
parser.add_argument("--batch", action="store_true", dest="batch",
                    help="produce batch files")
parser.add_argument("--power", help="power of alpha and epsilon, e.g. 00, 01", 
                    default = "05")
args = parser.parse_args()


# theta ------------------------------------
n_theta = 10
delta_theta = math.pi/(n_theta-1)
theta_list = [i*delta_theta for i in range(0,n_theta)]

# beta ------------------------------------
n_beta = 10
delta_beta = 0.95/(n_beta-1)
max_beta = 0.95
beta_list = [i*delta_beta for i in range(0,n_beta)]


#-----------------------------------------------------------------------------
# loop of calls to generate-batch-files.py
for beta in beta_list:
  for theta in theta_list:
    command = "./generate-batch-files.py {0} {1:.2f}  {2:.2f} {3}".\
               format(sys.argv[1], beta, theta, " ".join(sys.argv[2:]))
    print(command)
    p = subprocess.Popen(command, stdout=subprocess.PIPE, shell=True)
    # Talk with command i.e. read data from stdout and stderr. Store this
    # info in tuple Interact with process: Send data to stdin. Read data from
    # stdout and stderr, until end-of-file is reached.  Wait for process to
    # terminate. The optional input argument should be a string to be sent to
    # the child process, or None, if no data should be sent to the child.
    (output, err) = p.communicate()
    # Wait for command to terminate. Get return returncode
    p_status = p.wait()
    subprocess.check_output(command, shell=True)
    print(output)

