#!/usr/bin/env python3
#
# todo:
#

import argparse
import re
import string
import subprocess

parser =  argparse.ArgumentParser(description=
""" Apply print_identities for given prototype PRi and save it to idPRi

Example:

  $ ./print-identities.py PR7inc.dat
  $ ./print-identities.py idPR7.dat
  $ ./print-identities.py 7
  
""", formatter_class=argparse.RawTextHelpFormatter)
parser.add_argument("databasefile", \
                    help="string with prototype number; it can be a database or just a number")
args = parser.parse_args()


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  #-----------------------------------------------------------------------------
  # extract prototype name
  num_re = re.compile('(\d+)')
  #num_re = re.compile('(PR\d+)')
  num_list = num_re.findall(args.databasefile)
  proto_name = "PR{0}".format(num_list[0])
  #print(proto_name)

  #-----------------------------------------------------------------------------
  # generate database and ls -l the output file
  outfname = "id{0}.txt".format(proto_name)
  commandlist=["print_identities", proto_name, outfname]
  print(" ".join(commandlist))
  p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  out, err = p.communicate()
  outstr = out.decode("utf-8").strip(string.whitespace)
  p.wait()
  commandlist=["ls", "-lh", outfname]
  p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  out, err = p.communicate()
  outstr = out.decode("utf-8").strip(string.whitespace)
  p.wait()
  print(outstr)

