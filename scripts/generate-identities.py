#!/usr/bin/env python3
#
# usage:
#

import argparse
import re
import string
import sympy
import pyIBPs

parser =  argparse.ArgumentParser()
parser.add_argument("startinglist",
                    help="file with list of IBPs in FIRE format; if no other argument is given, the script will print identities in symbolic form")
parser.add_argument("--integrals", "-i",
                    help="file with list of integrals; with this option, the script will eveluate identities for specific list of integrals defined in a file of the form [1,0,...., 1] and save them in log files, one log file per integral")
args = parser.parse_args()

#-----------------------------------------------------------------------------
# Transform Mathematica/FIRE list of IBPs into Python list
#-----------------------------------------------------------------------------
def math_fire_list_to_python_list(lines):

  # remove tabs and new line white spaces
  whitespace = re.compile(r'[\t\n]+')
  lines = whitespace.sub('',lines)
  # replace multiple spaces with a single space
  doublespace = re.compile(r'\s{2,}')
  lines = doublespace.sub(' ',lines)

  IBPlist = lines.strip("{").strip("}").split(",")

  return IBPlist

#-----------------------------------------------------------------------------
# Remove reduntant () brackets from operator
#-----------------------------------------------------------------------------
def remove_redundant_brackets(operator):

  # match expressions of the type (something), where something cannot contain +
  # or - signs
  brackets_re = re.compile('([^\(\)]*)\(([^\+\-\)]*)\)([^\(\)]*)')
  brackets_search = brackets_re.search(operator)
  if brackets_search:
    operator = "".join([brackets_search.group(1), \
                        brackets_search.group(2),brackets_search.group(3)])

  return operator
  
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
def substitute_indices(coefficient, integral):
  coefftmp = coefficient
  for i in range(0, len(integral)):
    coefftmp = coefftmp.replace("a[{0}]".format(i+1), str(integral[i]))
  coefftmp = coefftmp.replace("\\[Alpha]","ap")
  coefftmp = coefftmp.replace("d","4-2*ep")
  coefftmp = coefftmp.strip("*")
  if coefftmp == '-': coefftmp = '-1'
  elif coefftmp == '+': coefftmp = '+1'
  #print((coefftmp))
  ep, a, c, ap = sympy.symbols('ep a c ap')
  #print(coefftmp, "  ", sympy.simplify(coefftmp))
  # simplify the coefficient
  #if '0' in coefftmp:
  #  coefftmp = '0'
  #elif '1*' in coefftmp:
  #  coefftmp = coefftmp.replace("1*", "")
  return sympy.simplify(coefftmp)

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def create_id_statements(coefflist, intlist, idcounter):
  assert(len(coefflist) == len(intlist))
  block =\
  "     id{0} =\n".format(idcounter)

  for integral, coefficient in zip(intlist, coefflist):
    if coefficient == 0: continue 
    indstr = ",".join(str(e) for e in integral)
    block +=\
    "         + PR0({0}) * ( {1} )\n\n".format(indstr, coefficient)

  block = block.strip('\n')
  block += ";\n\n"
  if not "PR" in block: return ""
  #print(intlist, coefflist, len(coefflist))
  return block

#-------------------------------------------------------------------------------
def create_identities_procedure(content):
  startblock =\
  "#procedure PR0identities(a1,a2,a3,a4,a5,a6)\n\n"+\
  "#-\n"+\
  "#include decls\n\n"
  endblock =\
 "mul replace_(a1,`a1',a2,`a2',a3,`a3',a4,`a4',a5,`a5',a6,`a6');\n"+\
 "id replace(?args) = replace_(?args);\n\n"+\
 "b PR0;\n"+\
 "print;\n"+\
 ".end\n"

  "#endprocedure\n"

  #idline_re = re.compile(r'(id\d+)')
  #idline_search = idline_re.search(content)
  #if idline_search:
  #  print (idline_search.group(0))
  #lines = whitespace.sub('',lines)

  content = startblock+content.replace("     id", "l id")+endblock 

  return content

#-------------------------------------------------------------------------------
#                            main part of the script
#-------------------------------------------------------------------------------

# read and process IBP list
with open(args.startinglist) as infile:
  # transfrer Mathematica/FIRE list of IBPs into Python format
  IBPlist = math_fire_list_to_python_list(infile.read())

#-------------------------------------------------------------------------------
# generate symbolic identities
if not args.integrals:
  a1, a2, a3, a4, a5, a6 = sympy.symbols('a1 a2 a3 a4 a5 a6')
  inintegral = [a1, a2, a3, a4, a5, a6]
  idcounter = 0;
  logfilecontent = ""
  for IBP in IBPlist:
    intlist = []
    coefflist = []
    idcounter += 1
    operatorslist = pyIBPs.splitoperators(IBP)
    for op in operatorslist:
      op = remove_redundant_brackets(op)
      coeff = pyIBPs.getprefactor(op)
      coeff = substitute_indices(coeff, inintegral)
      processedintegral = pyIBPs.apply_y_operators_new(op , inintegral)
      intlist.append(processedintegral)
      coefflist.append(coeff)
    logfilecontent += create_id_statements(coefflist, intlist, idcounter)
  print(create_identities_procedure(logfilecontent))

#-------------------------------------------------------------------------------
# generate numeric identities
elif args.integrals:
  # read and process integral list
  with open(args.integrals) as integrals_file:
    integrals = pyIBPs.input_file_into_list_of_integrals(integrals_file)
    #print(integrals)
  
  # apply IBPs to each integral from the list and save the result in log files
  intcounter = 0;
  # iterate over ingegrals
  for integral in integrals:
    print(intcounter,":", integral)
    idcounter = 0
    logfilecontent = ""
    # for each integral, iterate over IBPs
    #for IBP in IBPlist[1:2]:
    for IBP in IBPlist:
      #print(IBP)
      intlist = []
      coefflist = []
      idcounter += 1
      # split each operator in a given identity into a list of terms
      operatorslist = pyIBPs.splitoperators(IBP)
      # for each IBP, iterate over operators
      for op in operatorslist:
        op = remove_redundant_brackets(op)
        coeff = pyIBPs.getprefactor(op)
        # this is the integral after application of the operator op
        processedintegral = pyIBPs.apply_y_operators_new(op , integral)
        # this is the corresponding coefficient
        coeff = substitute_indices(coeff, integral)
        # add integrals and coefficients into lists for this IBPs
        intlist.append(processedintegral)
        coefflist.append(coeff)
      # we went through all operators in the current IBP, now we add the result to
      # the content of log file
      logfilecontent += create_id_statements(coefflist, intlist, idcounter)
    # we have completed IBPs for the current integral, we add a full set of
    # identities into the log file
    with open("{0}.log".format(intcounter), "w") as logfile:
      procedure = ",".join(str(e) for e in integral)
      procedure_line = "     #call PR0identities({0})\n\n".format(procedure)
      logfile.write(procedure_line)  
      logfile.write(logfilecontent)  
    intcounter += 1

