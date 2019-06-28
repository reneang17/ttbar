#!/usr/bin/env python3
#
# todo:
#

import argparse
import re

parser =  argparse.ArgumentParser(
formatter_class=argparse.RawTextHelpFormatter,\
description = \
'''Return list of unqique prototypes found in reduction output.'''
)
parser.add_argument("file",\
                    help = ("input file"))
parser.add_argument("--all", action = "store_true", \
                    help = ("print all prototypes, inlcuding the original integral"))
args = parser.parse_args()

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def extract_prototypes(content):

  proto_re = re.compile(r'(PR\d+\([^\)]*\))')

  prototypes = proto_re.findall(content)

  #return(sorted(prototypes))

  return(prototypes)

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  with open(args.file) as fh:
    prototypes = extract_prototypes(fh.read())

    proto_orig = prototypes[0]
    proto_masters = prototypes[1:]

    prototypes_to_print = proto_masters
    if args.all:
      prototypes_to_print = prototypes

    for proto in prototypes_to_print:
      print(proto)
