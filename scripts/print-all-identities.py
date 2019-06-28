#!/usr/bin/env python3
#
# todo:
#

import argparse
import os
import re
import string
import datetime
import subprocess

parser =  argparse.ArgumentParser(description=
"""
""", formatter_class=argparse.RawTextHelpFormatter)
args = parser.parse_args()

#-----------------------------------------------------------------------------
def generate_database(proto_name):
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


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  # get the list of inc.dat files
  inc_file_list = [x for x in os.listdir() if "inc.dat" in x]

  
  # run through prototypes in the list
  for inc_fname in inc_file_list:
    # extract prototype name
    num_re = re.compile('(PR\d+)')
    num_list = num_re.findall(inc_fname)
    proto_name = "{0}".format(num_list[0])
    txt_fname = "id{0}.txt".format(proto_name)

    # if txt does not exist
    if not os.path.isfile(os.path.abspath(txt_fname)):
      generate_database(proto_name)
    # if txt file is older than inc file, generate database
    elif os.path.getmtime(inc_fname)- os.path.getmtime(txt_fname) > 0:
      generate_database(proto_name)

