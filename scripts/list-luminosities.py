#!/usr/bin/env python3
#
# todo:
#

import argparse
import string

parser =  argparse.ArgumentParser()
#parser.add_argument("", \
#                    help="")
args = parser.parse_args()


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  #partons = ["q","g"]
  partons = ["q",u"q\u0305","g"]

  for a in partons:
    for b in partons:
      print(" {0}(x/z1) {1}(tau/(xz2))\n".format(a,b))

