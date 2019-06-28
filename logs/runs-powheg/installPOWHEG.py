#!/usr/bin/env python

import argparse
import os

parser = argparse.ArgumentParser()
parser.add_argument("heptoolspath", help="path to heptools directory")
args = parser.parse_args()

#------------------------------------------
files = [
"POWHEG-BOX/ttJ/pwhg_main-gnu"
]

for file in files:
  source = os.path.abspath("{0}/{1}".format(args.heptoolspath,file))
  dest   = os.path.abspath(os.path.basename(file))
  # remove old links
  if os.path.exists(dest): os.unlink(dest)
  print("Creating symbolic link",dest)
  # create link
  os.symlink(source, dest)

