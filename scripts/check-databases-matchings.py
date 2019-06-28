#!/usr/bin/env python3
#
# todo:
#

import argparse
import string
import re
import os

parser =  argparse.ArgumentParser()
parser.add_argument("prototypes",nargs='+', type=int,
                    help = "")
#parser.add_argument("startinglist",
#                    help="file with list of IBPs in FIRE format")
#parser.add_argument("--nprocmax", "-n", type=int, default = 4,
#                    help = "max number of parallel processes")
#parser.add_argument("--verbose", "-v", action="store_true", \
#                    help="print more information into stdout")
args = parser.parse_args()



#-------------------------------------------------------------------------------
def extract_matchings_list(content):

  proto_regex = re.compile(r'#call PR(\d+)matching')
  prototypes = proto_regex.findall(content)
  
  return [int(x) for x in prototypes]

#-----------------------------------------------------------------------------
def check_two_db_files(i):

  idfile  = os.path.abspath("idPR{0}.dat".format(i))
  incfile = os.path.abspath("PR{0}inc.dat".format(i))

  idexists  = os.path.isfile(idfile)
  incexists = os.path.isfile(incfile)

  if idexists:
    if incexists: return 1
    elif not incexists: return -1

  return 0


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  for num in args.prototypes:
    fname = "PR{0}matchings".format(num)
    required_proto_list = []
    with open(fname) as fh:
      required_proto_list = extract_matchings_list(fh.read())
   
    missing_dbs = []
    existing_dbs = []
    for proto in required_proto_list:
      if not check_two_db_files(proto): missing_dbs.append(proto)
      else: existing_dbs.append(proto)

    print(num, missing_dbs)
    #print(num, missing_dbs, existing_dbs)
