#!/usr/bin/env python3
#

import argparse
import re

parser =  argparse.ArgumentParser()
parser.add_argument("file", \
                    help=("file with integrals"))

parser.add_argument("--verbose","-v", action="store_true", \
                    help=("Verbose output"))
args = parser.parse_args()


#-----------------------------------------------------------------------------
if __name__ == '__main__':

  all_prototypes = set()
  regex = re.compile('PR(\d+)')

  # get integrals that need to be calculated
  prototypes_list = []
  with open(args.file) as fh:
  #with open("integrals") as fh:
    prototypes_list  = regex.findall(fh.read())

  for proto in prototypes_list:
    matchings_fname = "PR{0}matchings".format(proto)
    with open(matchings_fname) as fh:
      these_prototypes  = [int(x) for x in regex.findall(fh.read())]
      all_prototypes |= set(these_prototypes)


  if args.verbose:
    print("Total number of prototypes:", len(all_prototypes))

  print(" ".join([str(x) for x in sorted(all_prototypes)]))

