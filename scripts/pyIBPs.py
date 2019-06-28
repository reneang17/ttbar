#!/usr/bin/env python3
#
# Python3 module for operations with IBPs.

import operator
import re
import string

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
def apply_y_operators_new(term, inlist):

  # transform each operator into a tuple with relevant information
  # this regex gives back the opertaors
  yop_re = re.compile('(Ym*)\[(\d)\]\^*(\d*)')
  yop_search = yop_re.search(term)
  if yop_search:
    Yoperators = yop_re.findall(term)
  else:
    Yoperators = [('','','')]

  # this is the operator, represented as a list of  lengh = len(inlist)
  # consisting of integrers, which correspond to how much a given index 
  # is to be raised or lowerd; we start with list of zeros
  oplist = [0]*len(inlist)

  #print(Yoperators)
  for Yoperator in Yoperators:
    sign = 0
    power = 1
    if Yoperator[0] == "Y": sign = 1
    elif Yoperator[0] == "Ym": sign = -1
    if Yoperator[2] != '':
      power = int(Yoperator[2])
    if Yoperator[0] != '':
      oplist[int(Yoperator[1])-1] +=  sign*power

  #print(Yoperators, oplist)
  # add the two lists: the operator list oplist to the integral inlist
  return list(map(operator.add, oplist, inlist))

#-------------------------------------------------------------------------------
# Split operator into terms 
#-------------------------------------------------------------------------------
def splitoperators(lines): 

  # We read the string symbol by symbol and add it to the leftpart. When + or -
  # is encountered, leftpart is pushed to terms array and rest to "" for the
  # next interation. When the end of string is reached we add the last symbol to
  # leftpart and push the latter to terms as well.
  terms = []
  leftpart = ""
  position = 0
  for symbol in lines:
    position +=1
    if  symbol in ["+","-"] or position == len(lines):
      if position == len(lines): leftpart += symbol
      if len(leftpart) > 0 and leftpart != " ":
       terms.append(leftpart.replace("\n", "").replace(" ", ""))
      leftpart = ""
    leftpart += symbol

  return(terms)

#-----------------------------------------------------------------------------
# Get prefactor of an operator, i.e. all there is before encountering 
# the first Y
#-----------------------------------------------------------------------------
def getprefactor(term):
  leftpart = ""
  for symbol in term:
    if symbol == "Y": break;
    leftpart+=symbol
  return leftpart

#-------------------------------------------------------------------------------
# Extract integrals from the input file into a list
#-------------------------------------------------------------------------------
def  input_file_into_list_of_integrals(integrals_file):
  integrals = []
  integrals_file_content = integrals_file.readlines()
  for integral in integrals_file_content:
    integralint = []
    integral = integral.strip(string.whitespace)
    integral = integral.strip("[").strip("]")
    integrallist = integral.split(",")
    for indexraw in integrallist:
      index = indexraw.strip(string.whitespace)
      # the string does not have letters, which means it is a number
      if not index.isalpha(): 
        integralint.append(int(index))
      # the string has letters, which means it is a symbol
      else:
        integralint.append(index)
    integrals.append(integralint)
  return(integrals)  
