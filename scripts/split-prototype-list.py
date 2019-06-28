#!/usr/bin/env python3
#
# todo:
#

import argparse
import RegExUtil

parser =  argparse.ArgumentParser(
formatter_class=argparse.RawTextHelpFormatter,\
description="""
  Split list of prototypes given in a single file into a set of files, each with 
  a single prototype.
"""
)

parser.add_argument("fname", \
                    help="file with list of prototypes")
args = parser.parse_args()


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  proto_list = []
  with open(args.fname) as fh:
    proto_list = RegExUtil.regexstract(fh.read(),'(PR(\d+)\([^\)]*\))')

  for proto, num in proto_list:
    outfname = "int{0}".format(num)
    print("Writing", outfname)
    with open(outfname, "w") as fh: 
      fh.write(proto)
