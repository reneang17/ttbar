#!/usr/bin/env python3
#
# usage:
#

import re
import string
import operator
import pyIBPs

#-------------------------------------------------------------------------------
# obsolete
# version of remove empty space function based on iteratig over string
def remove_empty_space(line): 
  afterpm = False
  tmpstring = ""
  # remove white space
  for i in line:
    if i in string.whitespace:
      continue
    else:
      tmpstring += i

  term = ""
  terms = []
  for i in tmpstring:
    if i in ["+","-"] and term != "":
      terms.append(term)
      term = ""
    term += i

  # append the last term
  terms.append(term)
  return(terms)
    
#-----------------------------------------------------------------------------
def addplus(lines):
  newlines = lines
  if lines[0] not in ["+","-"]:
    newlines = "+ "+lines
  return newlines

#-------------------------------------------------------------------------------
def splitoperators(lines): 

  terms = []
  leftpart = ""
  pos = 0
  for symbol in lines:
    pos +=1
    if  symbol in ["+","-"] or pos == len(lines):
      if len(leftpart) > 0:
       terms.append(leftpart.replace("\n", "").replace(" ", ""))
      leftpart = ""
    leftpart += symbol 

  return(terms)


#-------------------------------------------------------------------------------
# version of remove empty space function based on regular expressions
def remove_empty_space_re(line): 
  term_re = re.compile('([+-])(\s*)(\S+)')

  terms = []
  term_search = term_re.search(line)
  if term_search:
    tuples = term_re.findall(line)
    print(tuples)

  for t in tuples: terms.append("".join([t[0],t[2]]))

  return terms

#-------------------------------------------------------------------------------
def check_remove_empty_space(lines):
  terms = remove_empty_space(lines)
  terms2 = remove_empty_space_re(lines)

  for i, j in zip(terms, terms2):
    print(i == j)

#-----------------------------------------------------------------------------
def list_y_operators(lines):

  op_re = re.compile('((Ym*\[\d\]\^*\d*\**)+)')
  op_search = op_re.search(lines)
  
  listofoperators = []
  if op_search:
    allmatches = op_re.findall(lines)
    for match in allmatches:
      listofoperators.append(match[0])
  return (listofoperators)

#-----------------------------------------------------------------------------
def apply_y_operators(term, inlist):

  # transform each operator into a tuple with relevant information
  # this regex gives back the opertaors
  yop_re = re.compile('(Ym*)\[(\d)\]\^*(\d*)')
  yop_search = yop_re.search(term)
  if yop_search:
    Yoperators = yop_re.findall(term)

  # this regex gives back the coefficients
  coeff =  ""
  coeffs_re = re.compile('(Ym*\[\d\]\^*\d*){1}')
  coeffs_search = coeffs_re.search(term)
  if coeffs_search:
    print("findall:", coeffs_re.findall(term))
    coeff = term.split("*"+coeffs_re.findall(term)[0])[0]
    print("coef:", coeff)

  #
  oplist = [0]*len(inlist)

  for Yoperator in Yoperators:
    sign = 0
    power = 1
    if Yoperator[0] == "Y": sign = 1
    elif Yoperator[0] == "Ym": sign = -1
    if Yoperator[2] != '':
      power = int(Yoperator[2])
    oplist[int(Yoperator[1])-1] +=  sign*power

  print(coeff, list(map(operator.add, oplist, inlist)))
  return [coeff,list(map(operator.add, oplist, inlist))]

#------------------------------------
def test_apply_y_operators(terms):  
  testintegral = [1,0,1,0,1,1]
  print(testintegral, "<-- original integral")
  for term in terms:
    print(apply_y_operators(term, testintegral), term)
  
  opwithcancel = "+Y[6]Ym[6]^2Ym[1]"
  print(apply_y_operators(opwithcancel, testintegral),opwithcancel)


#-------------------------------------------------------------------------------
#                            main part of the script
#-------------------------------------------------------------------------------
 
# this will be the string with the final result
with open("foperator.txt") as infile:
  lines = infile.read()
  #alloperators = list_y_operators(lines)
  alloperators = splitoperators(lines)

  # integrals to which the foperator will be applied; these is the complete
  # set of integrals that need to be known
  integralsM =  [[1,0,1,0,1,1],[1,0,0,1,1,1],[0,1,1,0,1,1], [0,1,0,1,1,1], 
                 [0,0,2,0,1,1],[0,0,0,2,1,1], [0,0,1,1,1,1]]
  finalstr = ""
  finallist = []
  for integralM in integralsM:
    resstr = ""
    print(integralM)
    # apply foperator term by term
    for op in alloperators:
      print(op)
      coeff = pyIBPs.getprefactor(op)
      thistermlist = pyIBPs.apply_y_operators_new(op , integralM)
      tmplist = "{0}".format(thistermlist).replace("[","{").replace("]","}")
      print(coeff)
      print(tmplist)
      resstr += "{0}G[2,{1}]".format(coeff, tmplist)
    finallist.append(resstr)


  finalstr = "{{{0}}}".format(",".join(finallist))

  print(lines)

#------------------------------------
with open("mixed-out.txt","w") as outfile:
  outfile.write(finalstr)
