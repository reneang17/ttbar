#!/usr/bin/env python3
#
# todo:
#

import argparse
import re
import string

parser =  argparse.ArgumentParser(
formatter_class=argparse.RawTextHelpFormatter,\
description = \
'''Extract relevant functions: TPDFs, anomalous exponents, etc. from
TPDFsAtNNLO.frm and write them down in Mathematica format.'''
)
args = parser.parse_args()


#-------------------------------------------------------------------------------
# Extract specific function from the content
#-------------------------------------------------------------------------------
def extract_function(function,content):

  function_re = re.compile('Global ({0}) = ([^;]*);'.format(re.escape(function)))
  function_search = function_re.search(content)
  all_function = function_re.findall(content)

  if len(all_function) > 1: 
    print("Error, all_function list cannot be longer than 1")
    exit(1)

  return(all_function[0])

#-------------------------------------------------------------------------------
# Replace FORM symbols by Mathematica symbols
#-------------------------------------------------------------------------------
def replacements(content):

  # FORM-style functions into Mathematica-style functions
  output = re.sub(r'([HP]|Zeta|delta)\(([^\)]*)\)',r'\1[\2]',content)
  # splitting functions naming consistent with Mathematica file
  output = re.sub(r'P\[([qg])\,([qg])\,(-*z)\]',r'p\g<1>\g<2>0[\3]',output)

  output = output.replace("delta","DiracDelta")
  output = output.replace("PlPr","plus")
  output = re.sub(r'(plus)\(([^\)]*)\)',r'\1[\2]',output)
  output = output.replace("[1-z]","(1-z)")
  output = output.replace("Ca","CA")
  output = output.replace("Cf","CF")
  output = output.replace("Tf","TF")
  output = output.replace("Nf","nf")
  output = output.replace("Lp","LT")

  return  output

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def remove_white(str):
  res = str 

  for white in string.whitespace:
    res = res.replace(white,"")

  return res

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def simplify_name(str):
  output = re.sub(r'[\[\]\,\{\}\/\(\)z]',r'',str)
  return output

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  infile = "TPDFsAtNNLO.frm"
  content = ""
  with open(infile) as fh:
    content = fh.read()

  functions = {"[F,{q},(1)]","[F,{g},(1)]",\
               "[F,{q},(2)]","[F,{g},(2)]",\
               "[I,{g/q},(1),z]","[I,{q/g},(1),z]",\
               "[I,{g/q},(2),z]","[I,{q/g},(2),z]",\
               "[I,{q/q},(1),z]","[I,{q/q},(2),z]",\
               "[I,{g/g},(1),z]","[I,{g/g},(2),z]"\
              }

  #out = "{"
  out = "\n"
  for function in functions:
    res = extract_function(function,content)
    name = simplify_name(res[0])+"GLY"
    res = remove_white(res[1])
    #res = res[1]
    res = replacements(res)
    out += "{0}[z_] :=  {1};\n\n".format(name, res)
    #out += "{0} -> {1},".format(name, res)
  #out = out.rstrip(",")
  #out += "}"

  with open("../GLYResults.m","w") as fh:
    fh.write(out)
