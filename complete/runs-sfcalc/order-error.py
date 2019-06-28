#!/usr/bin/env python
#
#  EXAMPLE:
#
#    $grep res res*dat | ../order-error.py


import argparse
import sys

parser =  argparse.ArgumentParser()
args = parser.parse_args()


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':


  data = sys.stdin.readlines()
  mylist = [x.split() for x in data]
  

  mylist_sorted = sorted(mylist, key = lambda x: float(x[-1]))

  for element in mylist_sorted:
    #print(element)
    print(" ".join(element))


