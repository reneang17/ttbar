#!/usr/bin/env python3
#
# todo:
#

import argparse
import operator
import pyIdSolver

parser =  argparse.ArgumentParser()
parser.add_argument("startinglist",
                    help="file with list of IBPs in FIRE format")
parser.add_argument("sectors",nargs='+', type=int,
                    help="sectors in the format 1 -1 -1 1 1 1, "+\
                         "where 1 means that the given propagator can be a "+\
                         "denominator or a numerator, while -1 allows a "+\
                         "propagator to be only a denominator")
args = parser.parse_args()

#------------------------------------------------------------------------------
# Transfer IBP object back to string
#------------------------------------------------------------------------------
def ibp_to_str(ibp):
  ibpstr = ""
  for coeff, integral in zip(ibp.coefficients(), ibp.integrals()):
    ibpstr += " +({0})".format(coeff)

    difflist = list(map(operator.sub, integral, ibp.indices()))
    op = ""
    for i in range(0,len(difflist)): 
      if difflist[i] > 0: op += "*Y[{0}]".format(i+1)
      if difflist[i] < 0: op += "*Ym[{0}]".format(i+1)
  
    ibpstr += op

  return ibpstr


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#                            MAIN PART OF THE SCRIPT
#
# The program uses the following key objects:
#
# sectors_list:   list of all possible sectors for a topology with the maximum
#                 number of indices and the zero sectors specified by 
#                 the 'sectors' command line argument
#
# IBP_list:       list of IBP objects, each of which corresponds to one IBP
#                 identity; IBP objects contain various representations of 
#                 the identities, e.g. as the original FIRE string or as lists
#                 of coefficients, operators and processed integrals
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':
  
  #-----------------------------------------------------------------------------
  # create list of IBPs
  #-----------------------------------------------------------------------------
  IBP_list = []
  with open(args.startinglist) as infile:
    # transfrer Mathematica/FIRE list of IBPs into Python format
    IBPs = pyIdSolver.math_fire_list_to_python_list(infile.read())
    # generate list of IBP objects
    for ibpstr in IBPs:
      ibp = pyIdSolver.IBP(ibpstr, len(args.sectors))
      IBP_list.append(ibp)
      print(ibp.description2())

  IBP_str = []
  for ibp in IBP_list:
    IBP_str.append(ibp_to_str(ibp))

  with open("ibps.txt", "w") as fh:
    content = ",".join(IBP_str)
    content = "{"+content+"}\n"
    fh.write(content)  

