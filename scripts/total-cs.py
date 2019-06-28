#!/usr/bin/env python3

import argparse
import string
import sys
import re

#------------------------------------------------------------------------------
# command line arguments handling
parser = argparse.ArgumentParser()
parser.add_argument("program", help="either topqT++ or mcfm")
args = parser.parse_args()

# get file list from stdin
files = sys.stdin.read().strip(string.whitespace).split()

# loop over all files given at input
for file in files:
  with open(file) as fh:
    content = fh.read()

    # --- topqT++ ------------------------------------
    if (args.program == "topqT++"):
      # get qTmax value
      qTmax_re = re.compile('\[qTmin\]\s+([^\s]*)')
      qTmax = float(qTmax_re.findall(content)[0])

      # get cs value
      cs_re = re.compile('# total_weight = ([^\s]*)')
      cs = float(cs_re.findall(content)[0])
      print(qTmax, cs)

    # --- MCFM ---------------------------------------
    elif (args.program == "mcfm"):
      # get cs value
      cs_re = re.compile('Cross-section is:\s+([^\s]*)')
      cs = float(cs_re.findall(content)[0])

      # get qTmin value
      qTmin_re = re.compile('\(\s+ ([^s(]*)\s+ \[ptjetmin\]\s+\)')
      qTmin = float(qTmin_re.findall(content)[0])
      print(qTmin, cs)

