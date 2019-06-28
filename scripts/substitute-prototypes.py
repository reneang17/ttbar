#!/usr/bin/env python3
#
# todo:
#

import argparse
import os
import re
import string
import subprocess

parser =  argparse.ArgumentParser(
formatter_class=argparse.RawTextHelpFormatter,\
description = \
''' Substitute prototypes in IdSolver output by integrals.'''
)
parser.add_argument("file",\
                    help = ("out file from reduction"))
parser.add_argument("--tmp", action = "store_true", \
                    help = ("keep temporary files"))
args = parser.parse_args()

#-------------------------------------------------------------------------------
def prepare_form_file_content(input_list):

  content  = "#-\n"
  content += "#include decls\n"
  content += "#include {0}\n\n".format(args.file)

  for i in range(0,len(input_list)):
    content +="l integral{0} = {1};\n".\
               format(i,input_list[i].strip(string.whitespace))

  content += "\n"
  content += "#include finalsubstitutions\n\n"
  content += "print;\n"
  content += ".end"

  return content

#-------------------------------------------------------------------------------
def determine_integrals(outfile):

  content = ""
  with open(args.file) as fh: content = fh.read()

  prototypes_re = re.compile('fill\s+(PR\d+\([^\)]+\))\s+=')
  return prototypes_re.findall(content)


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  #-----------------------------------------------------------------------------
  prototypes = determine_integrals(args.file)

  form_file_content = ""
  form_file_content = prepare_form_file_content(prototypes)
  form_fname = ".substitute.frm"
  with open(form_fname,"w") as fh:
    fh.write(form_file_content)
  command = "form {0}".format(form_fname)
  try:
    subprocess.check_call(command, shell=True)
    #output = subprocess.check_output(command, stderr=subprocess.STDOUT, shell=True)
    #print(output.decode("utf-8"))
  except (subprocess.CalledProcessError) as err:
    print("Error in {0}:\n{1}".format(os.path.basename(__file__), err))

  if not args.tmp:
    os.remove(form_fname)



    
