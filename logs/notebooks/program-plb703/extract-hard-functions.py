#!/usr/bin/env python3

import argparse
import re
import string

parser =  argparse.ArgumentParser(
formatter_class=argparse.RawTextHelpFormatter,\
description = \
'''Extract relevant hard functions from the code of Pecjak et al.'''
)
args = parser.parse_args()

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def add_replacements():

  res = """
ReplH = {Hmx -> Log[1+x], H0x -> Log[x], Hpx -> -Log[1-x], 
         Hmmx -> Hmx^2/2, H0mx -> -PolyLog[2,-x], Hm0x -> -H0mx + H0x*Hmx, 
         H00x -> H0x^2/2, H0px -> PolyLog[2,x], Hp0x -> -H0px + H0x*Hpx,
         Hmy  -> Log[1+yt], Hmmy -> Hmy^2/2, H0my -> -PolyLog[2,-yt], 
         Hmz  -> Log[1+zu], Hmmz -> Hmz^2/2, H0mz -> -PolyLog[2,-zu]};
"""

  res += "ReplVar = {"

  for i in range (1,8):
    res += "xp{0} -> 1/(1+xs)^{0}, xm{0} -> 1/(1-xs)^{0}, ".format(i)

  res += "yt1 -> 1+yt, "
  res += "zu1 -> 1+zu, "
  res += "yt -> (xt-xm)/xm, "
  res += "zu -> (1-xt-xm)/xm, "
  res += "xt -> -t1/M^2, "
  res += "xm -> mt^2/M^2, "
  res += "x-> xs, "
  res += "Lmu2m2 -> Log[hscale^2/mt^2], "
  res += "z2 -> Zeta[2], z3 -> Zeta[3], "
  res = res.rstrip(", ")+"};\n"


  return res

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def process_coefficient(coeff, iibar, order):

  coeff = coeff.replace("&","")
  coeff = coeff.replace("**","^")
  coeff = coeff.replace(".","")
  coeff = coeff.replace(" ","")
  coeff = coeff.replace("d0","")

  if order == "LO":
    coeff = re.sub(r'H{0}0\((\d),(\d)\)'.format(iibar),
                   r'H{0}0[[\1,\2]]'.format(iibar),coeff)
  elif order == "NLO":
    coeff = re.sub(r'H{0}1_coeff\((\d),(\d),(\d)\)'.format(iibar),
                   r'H{0}1coeff\1[[\2,\3]]'.format(iibar),coeff)

  return coeff+";\n\n"

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def extract_coefficients(content, iibar, order):
  cont = False
  res = ""
  for line in content:
    line = line.strip(string.whitespace)
    if "conjg" in line: continue
    if order == "LO":
      condition = (line[0:5] == "H{0}0(".format(iibar))
    elif order == "NLO":
      condition = (line[0:11] == "H{0}1_coeff(".format(iibar))
    if condition:
      if cont == True:
        res += process_coefficient(tmp, iibar, order)
      tmp = line
      cont = True
    elif cont and len(line) > 0:
      if line[0] == "&":
        tmp += line
      else:
        cont = False
        res += process_coefficient(tmp, iibar, order)

  return res

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  #-----------------------------------------------------------------------------
  # Hqq LO
  #-----------------------------------------------------------------------------
  with open("TopNNLO/TopHSqq.f90") as fh: content = fh.readlines()
  out = """
(*******************************************************************************
 *
 * Hqq LO
 *
 ******************************************************************************)
Hqq0=ConstantArray[0,{2,2}];

"""
  out += extract_coefficients(content, "qq", "LO")

  #-----------------------------------------------------------------------------
  # Hqq NLO
  #-----------------------------------------------------------------------------
  out += """
(*******************************************************************************
 *
 * Hqq NLO
 *
 ******************************************************************************)
Hqq1coeff0=ConstantArray[0,{2,2}];
Hqq1coeff1=ConstantArray[0,{2,2}];
Hqq1coeff2=ConstantArray[0,{2,2}];

"""

  out += extract_coefficients(content, "qq", "NLO")

  for i in range(0,3):
    out += "Hqq1coeff{0}[[2,1]]=Hqq1coeff{0}[[1,2]]/.cI->-cI;\n".format(i)

  out += """
Hqq1=Lmu2m2^2*Hqq1coeff2+Lmu2m2*Hqq1coeff1+Hqq1coeff0;
"""

  #-----------------------------------------------------------------------------
  # Hgg LO
  #-----------------------------------------------------------------------------
  with open("TopNNLO/TopHSgg.f90") as fh: content = fh.readlines()
  out += """
(*******************************************************************************
 *
 * Hgg LO
 *
 ******************************************************************************)
Hgg0=ConstantArray[0,{3,3}];

"""
  out += extract_coefficients(content, "gg", "LO")

  out += """
Hgg0[[2,1]]=Hgg0[[1,2]]/.cI->-cI;
Hgg0[[3,1]]=Hgg0[[1,3]]/.cI->-cI;
Hgg0[[3,2]]=Hgg0[[2,3]]/.cI->-cI;\n"""

  #-----------------------------------------------------------------------------
  # Hgg NLO
  #-----------------------------------------------------------------------------
  out += """
(*******************************************************************************
 *
 * Hgg NLO
 *
 ******************************************************************************)
Hgg1coeff0=ConstantArray[0,{3,3}];
Hgg1coeff1=ConstantArray[0,{3,3}];
Hgg1coeff2=ConstantArray[0,{3,3}];

"""

  out += extract_coefficients(content, "gg", "NLO")

  for i in range(0,3):
    out += """
Hgg1coeff{0}[[2,1]]=Hgg1coeff{0}[[1,2]]/.cI->-cI;
Hgg1coeff{0}[[3,1]]=Hgg1coeff{0}[[1,3]]/.cI->-cI;
Hgg1coeff{0}[[3,2]]=Hgg1coeff{0}[[2,3]]/.cI->-cI;\n""".format(i)


  out += """
Hgg1=Lmu2m2^2*Hgg1coeff2+Lmu2m2*Hgg1coeff1+Hgg1coeff0;
"""

  #-----------------------------------------------------------------------------
  #  Replacements 
  #-----------------------------------------------------------------------------
  out += """
(*******************************************************************************
 *
 * Replacements
 *
 ******************************************************************************)

"""
  out += add_replacements()

#  out += """
#
#Hqq0 = Hqq0 //. ReplVar // Simplify;
#Hgg0 = Hgg0 //. ReplVar // Simplify;
#Hqq1 = Hqq1 //. ReplH //. ReplVar;
#Hgg1 = Hgg1 //. ReplH //. ReplVar;
#"""

#-----------------------------------------------------------------------------
# save complete output to file
#-----------------------------------------------------------------------------
  with open("../HardFunction.m","w") as fh:
    fh.write(out)
