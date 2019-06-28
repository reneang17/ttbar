#!/usr/bin/env python

import argparse
import string
import re
import glob
import math

parser =  argparse.ArgumentParser()
parser.add_argument("file", help="file to be transformed")
args = parser.parse_args()


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  with open(args.file) as fh:
    content = fh.read()
    newcontent = re.sub(r'col([\d]+)int([\d]+)',r'col[\1][\2]',content)

  with open(args.file.replace(".dat","trans.dat"),"w") as fh:
    fh.write(newcontent)
    
