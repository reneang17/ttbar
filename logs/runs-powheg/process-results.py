#!/usr/bin/env python3
#
import os
import sys
import string
import subprocess
import re
import argparse

##------------------------------------------------------------------------------
## options
#parser = \
#argparse.ArgumentParser(usage="ls [topfiles] | ./ %(prog)")
#args = parser.parse_args()

#-----------------------------------------------------------------------------
# transform .top files into .res files
files = [x.strip(string.whitespace) for x in sys.stdin.readlines()]
for file in files:
  command ="./transform-top-files.py {0}".format(file)
  subprocess.check_call(command, shell=True)

#-----------------------------------------------------------------------------
# combine .res files for various observables
observables = ["ptttbar", "logptttbar"]
for observable in observables:
  resfiles = [x.replace(".top", "_{0}.res".format(observable)) for x in files]
  datfname = re.sub(r"seed[0-9]+","seedcomb",resfiles[0]).replace("res", "dat")
  command = "paste {0} | combine-runs-errors.py > results/{1}".\
             format(" ".join(resfiles), datfname)
  subprocess.check_call(command, shell=True)
