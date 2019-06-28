#!/usr/bin/env python3
#
# Module extending functionality of IdSolver. 
#
# Content: classes Prototype and IBP.

import functools
import re
import string
import sympy
import pickle
import operator

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
# Prototype class. 
#
# Prototype object is a super-sector. It knows not only the denominator list but
# the sector id and number of denominators. It has a name and different
# representations (original integrals, IdSolver format) and it knows the
# relation between them.
# 
# Constructor takes sector in Mathematica/FIRE format (list of +/-1) and creates
# a prototype in IdSolver format. The class also stores information about sector
# given prototype belongs to (= number of denominators).
#
# FIRE format:      I(a1,a2,a3,...,an), where ai can be negative or positive
# IdSolver format:  PRX(n1,n2,n3,...nn), where the first t indices correspond 
#                   to denominators and are positive, while the rest 
#                   corresponds to numerators and should be negative
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
class Prototype:

  #-----------------------------------------------------------------------------
  def __init__(self,name, sector, zeroindices):
    self.__sector = sector         # sector spec. in FIRE format  (with +/-1))
    self.__zeroindices = zeroindices # list with propagator indices which must
                                     # be positive 
    self.__name = name             # name of the prototype
    self.__nindices  = len(sector) # number of indices
    self.__nden = sector.count(1)  # number of denominators
    # conversion list to the IdSolver format
    self.__conversion_list = self.__conversion_list(sector) 
    self.__inverse_conversion_list= self.__inverse_conversion_list() 
    self.__id = self.__sectorid()
    self.__prototypes_with_zeros = self.__generate_prototypes_with_zeros()
    self.__zero_prototypes = self.__generate_zero_prototypes()
    # create a prototype of name 'name' from the sector
    self.__proto =[sector[self.__conversion_list[i]-1] \
                   for i in range(0,self.__nindices)]

    self.__shifted_sector = self.__shifted_sector(sector)


  #-----------------------------------------------------------------------------
  # private functions

  #-----------------------------------------------------------------------------
  #
  #-----------------------------------------------------------------------------
  def __shifted_sector(self, sector):

    shifted_sector = []
  
    # temporary fix for NLO and topologies lower than 16
    #if len(sector) == 16 :
    for i, j in zip(sector, Prototype.mapping):
      shifted_sector.append(sector[j-1])
    
    #print(self.__name, sector, shifted_sector)
    #print(shifted_sector)
    return shifted_sector

    #self.__shifted_sector = shifted_sector
    #print(sector, "<->", shifted_sector, self.__id, self.id_shifted())
    #print(sector, "<->", shifted_sector, self.__sectorid())
    #print(sector, "<->", shifted_sector)

  #-----------------------------------------------------------------------------
  # Each sector has a unique ID computed as in Reduze
  #-----------------------------------------------------------------------------
  def __sectorid(self):
    idnum = 0
    for i in range(0,self.__nindices):
      if self.__sector[i] == 1: idnum += 2**(i)
    return idnum

  #-----------------------------------------------------------------------------
  # Conversion list is, which tell us which place in the prototype corresponds
  # to which propagator. Position in the list + 1 = i of n_i, the number at that
  # position = j of a_j.
  #
  # For example [5,6,1,2,3,4] means that the first power in the prototype (hence
  # IdSolver notation) raises the 5th propagator, the second power raises the
  # 6th, etc. Ordering in this list is an ordering in the prototype.
  #-----------------------------------------------------------------------------
  def __conversion_list(self, sector):
    posprop = []
    negprop = []
    for i in range(0,len(sector)):
       propnum = i+1
       if sector[i] == 1: posprop.append(propnum)
       elif sector[i] == -1: negprop.append(propnum)
    return  posprop + negprop

  #-----------------------------------------------------------------------------
  # Inverse conversion list tells us which index in prototype notation seats at
  # the propagator in FIRE notation. Position in the list+1 = propagator index,
  # (hence propagators are labeled P1, P2, P3,..., as usual) and the number at
  # that positiona = i of n_i, where the later is the index in prototype
  # notation
  #-----------------------------------------------------------------------------
  def __inverse_conversion_list(self):

    inverse_list = [0]*self.__nindices
    for i in range(0,self.__nindices):
      inverse_list[self.__conversion_list[i]-1] = i+1

    return inverse_list

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def __fill_zeros(self, protolist):
    tmpproto = []
    for proto in protolist:
      used = []
      for k in range(0, self.__nden):
        if proto[k]-1 in self.__zeroindices: continue
        tmpproto = proto[:]
        if k not in used:
          used.append(k)
          tmpproto[k] = 0 
          if tmpproto not in self.__reslist:
            self.__reslist.append(tmpproto)

    return self.__reslist[:]  

  #-----------------------------------------------------------------------------
  # Generate prototypes with powers of denominators turned to zero.
  # The function returns tuple (id, prototype). 
  #-----------------------------------------------------------------------------
  def __generate_prototypes_with_zeros(self):
    self.__reslist = []
    protolist = [self.__conversion_list]

    self.__fulllist = []
    for zeros in range(0,self.__nden-len(self.__zeroindices)):
      protolist = self.__fill_zeros(protolist)
      self.__fulllist = protolist
      #self.__fulllist = self.__fulllist + protolist
  
    prototypes_with_zeros_and_ids_list = []
    for prototype in self.__fulllist:
      prototypes_with_zeros_and_ids_list.append((self.id2(prototype),prototype))

    # return list of tuples with (id, prototype)
    return prototypes_with_zeros_and_ids_list

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def __generate_zero_prototypes(self):

    zero_prototypes_list = []
    # self.__zeroindices uses c++ notation whereas propagator indices run from 1
    for zeroindex in self.__zeroindices:
      proto = self.__conversion_list[:]
      index_to_set_to_zero = proto.index(zeroindex+1)
      proto[index_to_set_to_zero] = 0
      zero_prototypes_list.append(proto)

    return zero_prototypes_list

  #-----------------------------------------------------------------------------
  # public functions

  #-----------------------------------------------------------------------------
  # Each sector has a unique ID computed as in Reduze
  #-----------------------------------------------------------------------------
  def shifted_id(self):
    idnum = 0
    for i in range(0,self.__nindices):
      if self.__shifted_sector[i] == 1: idnum += 2**(i)
    return idnum

  #-----------------------------------------------------------------------------
  # Alternative way of computing id based on converson list (remember that the
  # numbers in this list are just propagator numbers)
  #-----------------------------------------------------------------------------
  def id2(self, conversion_list):
    idnum = 0
    for prop_num in conversion_list[:self.__nden]:
      if prop_num != 0:
        idnum += 2**(prop_num-1)
    return idnum
      
  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def description(self):
    return "{0} {1} I({2}) = {3}({4})".\
            format(self.__nden, self.__id, \
                   ",".join(str(e) for e in self.__sector),\
                   self.__name, ",".join(str(e) for e in self.__proto))

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def sector(self):
    return self.__sector

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def shifted_sector(self):
    #print(self.__shifted_sector)
    return self.__shifted_sector

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def id(self):
    return self.__id

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def symbolic_integral(self):
    length = len(self.__conversion_list)
    symbolic_list = ['X']*length
    for i in range(0,length):
      ai = self.__conversion_list[i]
      symbolic_list[ai-1] = "n{0}".format(i+1)
    return symbolic_list
      
  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def conversion_list(self):
    return self.__conversion_list

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def inverse_conversion_list(self):
    return self.__inverse_conversion_list

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def prototypes_with_zeros(self):
    return self.__prototypes_with_zeros

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def zero_prototypes(self):
    return self.__zero_prototypes

  #-----------------------------------------------------------------------------
  # Return  number of denominators (positive indices)
  #-----------------------------------------------------------------------------
  def nden(self):
    return self.__nden

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def name(self):
    return self.__name

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  # Prototype number
  def number(self):
    return int(self.__name[2:])

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def nindices(self):
    return self.__nindices

  #-----------------------------------------------------------------------------
  # Return integral corresponding to given prototype 
  # indices: these are indices of the prototype
  #-----------------------------------------------------------------------------
  def integral(self, indices):
    #print(self.inverse_conversion_list())
    integral =  [0]*self.__nindices
    for i in range(0,len(self.__conversion_list)):
      integral[self.__conversion_list[i]-1] = indices[i]
   
    return integral


Prototype.mapping = [4, 5, 6, 1, 2, 3, 7, 9, 8, 10] # correct
#Prototype.mapping = [4, 5, 6, 1, 2, 3, 7, 8, 9, 10]  # wrong
#Prototype.mapping = [9,10,11,12,5,6,7,8,1,2,3,4,13,15,14,16]

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
# IBP class
#
# Store and process single IBP. 
#
# The IBP is constructed from initial IBP string, which is then parsed and
# applied to symbolic integral of nindices. The IBP is represented as a list
# of coefficients and list of integrals resulting fron applying the IBP to the
# original integral.
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
class IBP:

  # ----------------------------------------------------------------------------
  def __init__(self,ibpstr,nindices):
    # initialize internal variables
    self.__IBPstring = ibpstr      # string with the original IBP
    self.__nindices  = nindices    # number of indices
    self.__original_integral = []  # original integral with symbolic 
                                   # indices a1, a2,..., an
    self.__aux_proto_integral = [] # auxiliary integral for prototype constr.
    self.__IBPlist = []            # IBP identity as a list of operators
    self.__IBPcoefficients = []    # coefficients in front of IBP operators
    self.__IBPintegrals = []       # integrals resulting from application 
                                   # of operator at original integral
    for i in range(1,nindices+1):
      self.__original_integral.append(sympy.symbols('a{0}'.format(i)))
      self.__aux_proto_integral.append(sympy.symbols('n{0}'.format(i)))

    # parse the IBP string into list of operators and list of coefficients 
    self.__parseIBP()
    
    # apply IBP to the original integral and save the resulting integrals 
    # in the IBPintegrals list
    self.__applyIBP()

  # ----------------------------------------------------------------------------
  # Split IBP string into list of operators
  #-----------------------------------------------------------------------------
  def __IBPstring_into_list_of_operators(self, IBPstring): 
    # We read the IBP string, symbol by symbol, and add it to the leftpart. When
    # + or - is encountered, leftpart is pushed to terms array and gets reset to
    # "" for the next interation. When the end of string is reached we add the
    # last symbol to leftpart and push the latter to terms as well.
    terms = []     # terms is just a FIRE operator with coefficient
    leftpart = ""
    position = 0
    for symbol in IBPstring:
      position +=1
      if  symbol in ["+","-"] or position == len(IBPstring):
        if position == len(IBPstring): leftpart += symbol
        if len(leftpart) > 0 and leftpart != " ":
         terms.append(leftpart.replace("\n", "").replace(" ", ""))
        leftpart = ""
      leftpart += symbol
    return(terms)

  #-----------------------------------------------------------------------------
  # Remove reduntant () brackets from operator
  #-----------------------------------------------------------------------------
  def __remove_redundant_brackets(self,operator):
    # match expressions of the type (something), where something cannot contain
    # + or - signs
    brackets_re = re.compile('([^\(\)]*)\(([^\+\-\)]*)\)([^\(\)]*)')
    brackets_search = brackets_re.search(operator)
    if brackets_search:
      operator = "".join([brackets_search.group(1), \
                          brackets_search.group(2),brackets_search.group(3)])
    return operator

  #-----------------------------------------------------------------------------
  # Get coefficient of an operator, i.e. all there is before encountering 
  # the first Y
  #-----------------------------------------------------------------------------
  def __get_coefficient(self, operator):
    leftpart = ""
    for symbol in operator:
      if symbol == "Y": break;
      leftpart+=symbol
    if leftpart == "": leftpart = '+1'
    return leftpart

  #-----------------------------------------------------------------------------
  # Adjust operator coefficients by substituting a[i] with the sympy symbols ai,
  # and -/+ with -1/+1. Then, transfer other symbols into sympy symbols and
  # sympy.simplify the coefficients.
  #-----------------------------------------------------------------------------
  def __adjust_coefficients(self, coefficient):
    coefftmp = coefficient
    for i in range(0, self.__nindices):
      coefftmp = coefftmp.replace("a[{0}]".format(i+1), \
                                  str(self.__original_integral[i]))
    coefftmp = coefftmp.strip("*")
    if coefftmp == '-': coefftmp = '-1'
    elif coefftmp == '+': coefftmp = '+1'
    ep, a, b, c, ap, x, qT2 = sympy.symbols('ep a b c ap x qT2')
    return sympy.simplify(coefftmp)

  # ----------------------------------------------------------------------------
  # IBP is a sum of operators. Here we parse the original IBP string, extract
  # the operators, their coefficients, adjust the latter and push the operators
  # and coefficient into appropriate strings.
  #-----------------------------------------------------------------------------
  def __parseIBP(self):
    IBPlist = self.__IBPstring_into_list_of_operators(self.__IBPstring)
    for operator in IBPlist:
      operator = self.__remove_redundant_brackets(operator)
      coefficient = self.__get_coefficient(operator)
      coefficient = self.__adjust_coefficients(coefficient)
      # push the operator and its coefficient to appropriate lists
      self.__IBPlist.append(operator)
      self.__IBPcoefficients.append(coefficient)

  #-----------------------------------------------------------------------------
  # Apply an operator (single term from IBP of the form coeff*Y[i]^m*Y[j]^n) 
  # to the original integral with indices: a1, a2,..., an.
  #-----------------------------------------------------------------------------
  def __apply_operator(self, term):
  
    # transform each operator into a tuple with relevant information
    # this regex gives back the opertaors
    yop_re = re.compile('(Ym*)\[(\d+)\]\^*(\d*)')
    yop_search = yop_re.search(term)
    if yop_search:
      Yoperators = yop_re.findall(term)
    else:
      Yoperators = [('','','')]

    # this is the operator, represented as a list of  lengh = number of indices
    # consisting of integrers, which correspond to how much a given index 
    # is to be raised or lowerd; we start with list of zeros
    oplist = [0]*self.__nindices
  
    for Yoperator in Yoperators:
      sign = 0
      power = 1
      if Yoperator[0] == "Y": sign = 1
      elif Yoperator[0] == "Ym": sign = -1
      if Yoperator[2] != '':
        power = int(Yoperator[2])
      if Yoperator[0] != '':
        oplist[int(Yoperator[1])-1] +=  sign*power
  
    # add the two lists: the operator list oplist and the original integral 
    return list(map(operator.add, oplist, self.__original_integral))

  #----------------------------------------------------------------------------
  def __applyIBP(self):
    for operator in self.__IBPlist:
      self.__IBPintegrals.append(self.__apply_operator(operator))
  # ----------------------------------------------------------------------------
  # Return the original IBP string
  #-----------------------------------------------------------------------------
  def string(self):
    return self.__IBPstring

  # ----------------------------------------------------------------------------
  # Return the list of indices, which is our original symbolic integral
  #-----------------------------------------------------------------------------
  def indices(self):
    return self.__original_integral

  # ----------------------------------------------------------------------------
  # Return the IBP as a list of operators
  #-----------------------------------------------------------------------------
  def list(self):
    return self.__IBPlist

  # ----------------------------------------------------------------------------
  # Return list of coefficients in front of operators
  #-----------------------------------------------------------------------------
  def coefficients(self):
    return self.__IBPcoefficients

  # ----------------------------------------------------------------------------
  # List of integrals resulting from applying IBP to the original integral
  #-----------------------------------------------------------------------------
  def integrals(self):
    return self.__IBPintegrals

  # ----------------------------------------------------------------------------
  def description(self):
    descr = "-"*80+"\n"\
    "IBP STRING:   {0}\n".format(self.__IBPstring.strip(string.whitespace))+\
    "COEFFICIENTS: {0}\n".format(self.__IBPcoefficients)+\
    "INTEGRALS:    {0}\n".format(",".join(str(e) for e in self.__IBPintegrals))

    return descr

  # ----------------------------------------------------------------------------
  # Human readable form of IBP. It also allows one to compare the input (string)
  # with the output (relation) and explicitly see whether the script is makes
  # correct translation.
  # ----------------------------------------------------------------------------
  def description2(self):
    descr = "-"*80+"\n"\
    "IBP STRING:   {0}\n".format(self.__IBPstring.strip(string.whitespace))

    
    descr += "IBP RELATION:\n"
    for coeff, integral in zip(self.__IBPcoefficients, self.__IBPintegrals):
      descr +="{0}*{1}\n".format(coeff, integral)

    return descr

  # ----------------------------------------------------------------------------
  # Return the IBP identity in notation of the given prototype object 'proto'
  #-----------------------------------------------------------------------------
  def in_prototype_notation(self, proto):

    # list of the same IBP integrals but written as prototypes
    IBPprototypes = []         
    # list of the same coefficients but written with ni indices
    IBPprotocoefficients = []  
    # conversion list is a prototype
    conversion_list = proto.conversion_list()
    inverse_conversion_list = proto.inverse_conversion_list()
    size = len(conversion_list)

    # conversion dictionary ai -> nj
    aini_dict = {}
    for i in range(0,size):
      aini_dict[self.__original_integral[i]] = \
               self.__aux_proto_integral[inverse_conversion_list[i]-1]

    for integral, coefficient in \
        zip(self.__IBPintegrals, self.__IBPcoefficients):
      prototype = [None]*size
      protocoefficient = [None]*size
      # convert integral; i below is an index of n_i; j is an index of a_j
      for i in range(0,size):
        j = conversion_list[i]-1 # the number from conversion_list - 1
        ai = self.__original_integral[j]
        ni = self.__aux_proto_integral[i]
        # IMPORTANT: this replacement lines is a bottleneck, 
        # one could think of improving it
        prototype[i] = integral[j].replace(ai,ni)
      IBPprototypes.append(prototype)
      # convert coefficient
      IBPprotocoefficients.append(functools.reduce(lambda key, value: key.replace(*value),\
                                        aini_dict.items(),coefficient))

    #return {'integrals':IBPprototypes, 'coefficients':IBPprotocoefficients}
    return zip(IBPprotocoefficients, IBPprototypes)

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#
# Master class
#
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
class Master:

  #-----------------------------------------------------------------------------
  def __init__(self,integralstr, prototype_list):

    # save integral as int list
    liststr = integralstr.strip(string.whitespace).split(",")
    self.__integral = [int(x) for x in liststr]
    self.__integralstr = "I({0})".format(integralstr)

    integralid = sectorid(self.__integral)

   

    # find the corresponding prototype and save it
    for proto in prototype_list:
     if integralid ==  proto.id():
       protolist = [self.__integral[x-1] for x in proto.conversion_list()]
       self.__protostr = "{0}({1})".format(proto.name(), \
                    ",".join(str(e) for e in protolist))
       break

  #-----------------------------------------------------------------------------
  # public funtions

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def integral(self):
    return self.__integral

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def protostr(self):
    return self.__protostr

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  def integralstr(self):
    return self.__integralstr

  
  def strtuple(self):
    return (self.__integralstr, self.__protostr)



#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# Various functions
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def sectorid(integral):
 nindices = len(integral)
 idnum = 0
 for i in range(0,nindices):
   if integral[i] > 0: idnum += 2**(i)
 return idnum

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def nden(integral):
  nden = 0
  for i in integral: 
    if i > 0: nden += 1
  return nden

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


#-------------------------------------------------------------------------------
# Get prototype number from prototype string
#-------------------------------------------------------------------------------
def prototype_number_from_protostr(protostr):
  proto_re = re.compile('PR(\d+)')
  n = int(proto_re.findall(protostr)[0])
  return n

#-------------------------------------------------------------------------------
# Transfrom string of the form 'PR(\d,\d,...)' into a list of integer indices
#-------------------------------------------------------------------------------
def prototype_indices_from_protostr(proto):
  proto_re = re.compile('PR\d+\(([^\)]*)\)')
  indices = proto_re.findall(proto)[0]
  return [int(x) for x in indices.split(",")]

#-----------------------------------------------------------------------------
# Read the list of prototypes from binary file. 
# The list is constructed such that the corresponds to the propagator number.
#-----------------------------------------------------------------------------
def read_prototype_list(pickleFileName):
  try:
    with open(pickleFileName, 'rb') as fh:
      prototype_list = pickle.load(fh)
  except FileNotFoundError as err:
    print("Error: File '{0}' does not exist.".format(pickleFileName),\
          "Run 'generate-admin-files.py' first.")
    exit(1)

  return prototype_list


#-----------------------------------------------------------------------------
# get a prototype of a given number from the list of prototypes
#-----------------------------------------------------------------------------
def get_prototype_from_list(fname, integralnumber):

  integralstr = ""
  with open(fname) as fh: 
    integral_re = re.compile('(PR{0}\([^\)]*\))'.format(integralnumber))
    integral_list = integral_re.findall(fh.read())
    if len(integral_list) == 1:
      integralstr = integral_list[0]
    elif len(integral_list) == 0 or len(integral_list) > 1:
      print("Error: something wrong with the integral number {0}."\
            .format(integralnumber))
      print(integral_list)
      exit(1)

  return integralstr
