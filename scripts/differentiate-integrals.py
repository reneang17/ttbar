#!/usr/bin/env python3
#
# todo:
#

import argparse
import subprocess
import os
import re
import string

parser =  argparse.ArgumentParser(
formatter_class=argparse.RawTextHelpFormatter,\
description = \
'''Read integrals from file, assuming the format

  I(a1,a2,...,a16)
  I(a1,a2,...,a16)
  ...

and differentiate over beta.
'''
)
parser.add_argument("file",\
                    help = ("input file"))
args = parser.parse_args()

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def differentiate(integralorig):

  # transfer the original integrals from the file into list of indices
  liststr = integralorig.strip(string.whitespace)
  #liststr = integralorig[2:-2]
  #integral = [int(x) for x in liststr.split(",")]

  # prepare tmp mathematica file
  content  = "(* Tempoarary Mathematica file for I({0}) *)\n".format(liststr)
  content += "\n"
  content += "Get[\"RedMod.m\"];\n"
  content += "\n"
  content += "inList = {{{0}}};\n".format(liststr)
  content += "op=Read[\"diffoperator.txt\"];\n"
  content += "op=op/.a[pow] :> inList[[pow]];\n"
  content += "Close[\"diffoperator.txt\"];\n"
  content += "expr=ApplyOperator[inList,op];\n"
  content += "Print[ExtractCoefficientsAndIntegrals[expr]];\n"
  #content += "integrals = DifferentiateMIx[inList];\n"
  content += "\n"
  #content += "Print[integrals[[1]]];\n"
  #content += "Print[integrals[[2]]];\n"
  content += "\n"
  content += "Quit[];\n"

  # write, read and exectue the Mathemtica file
  fname = ".differentiate.m"
  with open(fname,"w") as fh:
    fh.write(content)

  mathoutput = ""
  with open(fname) as fh:
    commandlist = ["math","-noprompt", "-run"]
    p = subprocess.Popen(commandlist, stdin=fh,stdout=subprocess.PIPE)
    out, err = p.communicate()
    mathoutput = out.decode("utf-8")
    p.wait()
    #print(mathoutput)
  #os.remove(fname)

  # extract Coefficients and Integrals lists
  re_coeffs = re.compile('Coefficients\[([^\]]+)\]')
  coeffs= re_coeffs.findall(mathoutput)[0].split(",")
  coeffs = list(map(lambda x: x.strip(string.whitespace), coeffs))
  #print(coeffs)
  re_integrals = re.compile('G\[([^\]]+)\]')
  integrals= re_integrals.findall(mathoutput)
  #print(integrals)
  #print(len(integrals))
  assert(len(coeffs) == len(integrals))

  # prepare output
  output = "I'({0}) = \n".format(liststr)
  for c, i in zip(coeffs, integrals):
    if c == '0':
      output += "{0} \n".format(c)
    else:
      if c[0] != "-": c = "+"+c
      ii = ",".join([x.strip(string.whitespace) for x in i.strip("\{").strip("\}").split(",")])
      output += "{0}*I({1}) \n".format(c, ii)

  print(output)
  
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  content = ""
  with open(args.file) as fh:
    for line in fh.readlines():
      differentiate(line)

