#!/usr/bin/env python3
#
# todo: explicitely print which integrals are duplicates

import string
import argparse
import pyIdSolver

parser =  argparse.ArgumentParser(
description = \
"""Generate all necessary NNLO soft functions in FIRE (index) format.
""", formatter_class=argparse.RawTextHelpFormatter)
#
parser.add_argument("--verbose", "-v", action="store_true", \
                    help="print more information into stdout; with this option douplicates are not removed so e.g we have I6b_23 and I6b_32, which have the same index representation; withot this option only index-unique integrals are printed")
parser.add_argument("--nden", "-n", type=int, \
                    help="show only integrals with NDEN denominators")
args = parser.parse_args()

#-----------------------------------------------------------------------------
# global objects
#-----------------------------------------------------------------------------
topology =  {"n1k":1,"n2k":2,"v3k":3,"v4k":4, "n1p":5,"n2p":6,"v3p":7,"v4p":8, \
             "n1pmk":9,"n2pmk":10,"v3pmk":11,"v4pmk":12, "p2":13, \
             "k2":14,"pmk2":15,"delqT2":16}

extpart = ["n1","n2","v3","v4"]
extpart_dict = {"n1":"1","n2":"2","v3":"3","v4":"4"}

integral_template = [0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1]

# list with unique integrals
unique_integrals = []

# dictionary with all integrals
all_integrals_dict = {}


#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
def generate_integral(denominator_list):

  #print(denominator_list)
  integral = integral_template[:]
  for prop in denominator_list:
    index = topology[prop]-1
    integral[index] += 1

  #integralstr = ",".join(str(e) for e in integral)
  #return integralstr
  return integral

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
def print_integral(integral):
  integralstr = ",".join(str(e) for e in integral)
  line = "{0}".format(integralstr)
  if args.nden: # = None by default
    if pyIdSolver.nden(integral) != args.nden: return

  return line 


#-----------------------------------------------------------------------------
# Return True for vanishing 2WL integrals
#-----------------------------------------------------------------------------
def vanishing_2WL(key, ni, nj):

  # eliminate diagonal integrals
  if key in ["I3_ij","I5_ij", "I6a_ij", "I6b_ij"]:
    if ni == nj and ni in ["n1", "n2"]: return True
  elif key in ["I4_ij","I72a_ij"]:
    if ni == nj: return True
  else:
    print("Error: unknown key: {0}.".format(key))
    exit(1)

  return False

#-----------------------------------------------------------------------------
# Return True for vanishing 3WL integrals
#-----------------------------------------------------------------------------
def vanishing_3WL(key, ni, nj, nk):

  if key in ["I8ab_ijk"]:
    if ni == nj or ni == nk or nj == nk: return True
  elif key in ["I8cd_ijk", "I8ef_ijk"]:
    if nj == nk: return True
    elif (ni == nj or ni == nk) and ni in ["n1", "n2"]: return True
  else:
    print("Error: unknown key: {0}.".format(key))
    exit(1)

  return False

#-----------------------------------------------------------------------------
# Return True for vanishing 4WL integrals
#-----------------------------------------------------------------------------
def vanishing_4WL(key, ni, nj, nk, nl):

  if key in ["I9_ijkl"]:
    if ni == nl or nk == nj: return True
    elif (ni == nj  and ni in ["n1", "n2"]) or \
         (nk == nl  and nk in ["n1", "n2"]): return True
  else:
    print("Error: unknown key: {0}.".format(key))
    exit(1)

  return False

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
# main part
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------


#-----------------------------------------------------------------------------
# 2WL integrals
# We do not calculate I72bij since it is equal to I6aij (see notes).
Idict = { "I3_ij":"nik nip njpmk njp",\
          "I4_ij":"nik nipmk njk njpmk",\
          "I5_ij":"nik nip njk njp",\
          "I6a_ij":"nik njp p2",\
          "I6b_ij":"nip njp p2",\
          "I72a_ij":"nik njpmk p2"
}

for key, val in Idict.items():
  for ni in extpart:
    for nj in extpart:
      if vanishing_2WL(key, ni, nj): continue
      denominator_str = val.replace("ni",ni).replace("nj",nj)
      denominator_list = denominator_str.split(" ")

      integral = generate_integral(denominator_list)
      integral_key =  key.replace("i",extpart_dict[ni]).\
                          replace("j",extpart_dict[nj])
      all_integrals_dict[integral_key] = integral

      if integral not in unique_integrals: unique_integrals.append(integral)

#-----------------------------------------------------------------------------
# 3WL integrals
Idict = { "I8ab_ijk":"nik nipmk njk nkpmk", \
          "I8cd_ijk":"nipmk nip njk nkpmk", \
          "I8ef_ijk":"nik nip njk nkpmk"
}

for key, val in Idict.items():
  for ni in extpart:
    for nj in extpart:
      for nk in extpart:
        if vanishing_3WL(key, ni, nj, nk): continue
        denominator_str = val.replace("ni",ni).replace("nj",nj).replace("nk",nk)
        denominator_list = denominator_str.split(" ")
  
        integral = generate_integral(denominator_list)
        integral_key =  key.replace("i",extpart_dict[ni]).\
                            replace("j",extpart_dict[nj]).\
                            replace("k",extpart_dict[nk])
        all_integrals_dict[integral_key] = integral

        if integral not in unique_integrals: unique_integrals.append(integral)
  
#-----------------------------------------------------------------------------
# 4WL integrals
Idict = { "I9_ijkl":"nik njk nkpmk nlpmk"}

for key, val in Idict.items():
  for ni in extpart:
    for nj in extpart:
      for nk in extpart:
        for nl in extpart:
          if vanishing_4WL(key, ni, nj, nk, nl): continue
          denominator_str = val.replace("ni",ni).replace("nj",nj).\
                                replace("nk",nk).replace("nl",nl)
          denominator_list = denominator_str.split(" ")
          integral = generate_integral(denominator_list)
          integral_key =  key.replace("i",extpart_dict[ni]).\
                              replace("j",extpart_dict[nj]).\
                              replace("k",extpart_dict[nk]).\
                              replace("l",extpart_dict[nl])
          all_integrals_dict[integral_key] = integral

          if integral not in unique_integrals: unique_integrals.append(integral)

#-----------------------------------------------------------------------------
# Print results
if args.verbose:
  sorted_dict = sorted(all_integrals_dict.items())
  for key, val in sorted_dict:
    integralstr = print_integral(val)
    if integralstr:
      print("{0:9} {1}".format(key, integralstr))
else:
  for integral in unique_integrals:
    #if args.nden: # = None by default
    #  if pyIdSolver.nden(integral) != args.nden: continue
    integralstr = print_integral(integral)
    if integralstr:
      print(print_integral(integral))
    #print("{0}".format(integral))

