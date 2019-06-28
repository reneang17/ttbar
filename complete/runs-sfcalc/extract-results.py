#!/usr/bin/env python
#
# todo:
#
# Example usage:
#

import argparse
import string
import re
import glob
import math
import sys
import os
import datetime

parser =  argparse.ArgumentParser()
parser.add_argument("name", help="name of the output file")
args = parser.parse_args()


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def generate_expression(dictionary):
 
  replacement = []
  for key, value in dictionary.items():
    outstr = "col"+key + "-> "
    serieslist = []
    for poles in value:
      ap_pole = int(poles[0][0])
      ep_pole = int(poles[0][1])
      if ep_pole == 5: ep_pole = -1
          
      serieslist.append("{2} ap^{0} ep^{1}".format(-ap_pole, -ep_pole,
                                                     poles[1]))
    outstr += "+".join(serieslist)
    replacement.append(outstr)

  return replacement

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def parse_math(expr):

  power = re.findall(r'([^e]*)e([^e]*)', expr)
  if len(power)>0:
    return "{0} Power[{1},{2}]".format(power[0][0], 10,float(power[0][1]))
  else:
    return expr


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  #resfiles = glob.glob("rescolgtad13_11_int1_comb_6_be0.95th0.7.dat")

  resfiles = glob.glob("res*comb*")
  #dirs = os.listdir(".")

  functions ={}
  errors ={}
  #print(resfiles)
  for file in resfiles:
    raw = file.lstrip("res").split("_")
    pspoint = raw[-1].strip(".dat")
    pspoint = re.findall(r'be([-\d\.]*)th([\d\.]*)', pspoint)[0]
    key = "{0}{1}".format(raw[0],raw[2])
    tmp = key.split("int")
    key = "[{0}][{2},{3}][{1}]".format(tmp[0],tmp[1],*pspoint)
    print(key)
    #if key[0:2] !="33": continue
    with open(file) as fh: 
      content = fh.read()
      if len(content) == 0: continue
      resline = re.findall(r'result = ([^+]*) \+/- ([\d\.e-]*)', content)[0]
      #print(resline)
      result = resline[0]
      error = resline[1]
    #valres = (raw[1], result) 
    valres = (raw[1], parse_math(result))
    #valerr = (raw[1], math.pow(float(parse_math(error)),2)) # does not wokr
    #valerr = (raw[1], float(error))
    valerr = (raw[1], parse_math(error))
    functions.setdefault(key,list()).append(valres)
    errors.setdefault(key,list()).append(valerr)

  resfinalstr = ",".join(generate_expression(functions))
  errfinalstr = ",".join(generate_expression(errors))
  resfinalstr = "{{{0}}}".format(resfinalstr)
  errfinalstr = "{{{0}}}".format(errfinalstr)
  #finalstr = "Repl2cut = {{{0}}}".format(finalstr)

  header = """(*
 * Created with {0}
 * in {1}
 * on {2}
 *)
""".format(" ".join(sys.argv), os.getcwd(),
           datetime.datetime.now().strftime("%Y-%m-%d %H:%M"))

  with open("replacements"+args.name+".m","w") as fh:
    fh.write(header)
    fh.write(resfinalstr)
  with open("errors"+args.name+".m","w") as fh:
    fh.write(header)
    fh.write(errfinalstr)
