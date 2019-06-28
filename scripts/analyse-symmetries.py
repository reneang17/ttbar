#!/usr/bin/env python3
#
# todo:
#

import argparse
import string
import sympy

parser =  argparse.ArgumentParser()
parser.add_argument("integrals",
                    help="file with integrals in FIRE format")
parser.add_argument("--verbose", "-v", action="store_true", \
                    help="write integralas in index form rather than numbers")
parser.add_argument("format", 
                    choices = ["all", "unique", "min"],
                    help="output format; all: relation for all integrals from input file, unique: only unique relations, min: minimal set of integrals")
args = parser.parse_args()



#-------------------------------------------------------------------------------
propagators_str = ["n1*k","n2*k","v3*k","v4*k","n1*p","n2*p","v3*p","v4*p",
"n1*(p-k)","n2*(p-k)","v3*(p-k)","v4*(p-k)", "p**2", "k**2", "(p-k)**2",
"n1*p1*n2*p2 -qT**2"]

propagators = [sympy.sympify(x) for x in propagators_str]

symmetry = ("k","p-k")
p, k, n1, n2, v3, v4 = sympy.symbols('p k n1 n2 v3 v4')
tmp = sympy.symbols('tmp')

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
# Integral class
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
class Integral:

  #-----------------------------------------------------------------------------
  def __init__(self,integral, number):
    self.__integral_orig = integral
    self.__integral_dict = self.__list_to_dict()
    self.__number = number
    self.__equivalents = [number]

  #-----------------------------------------------------------------------------
  def __list_to_dict(self):
    tmp_dict = dict()
    for pos in range(0,len(self.__integral_orig)):
      power = self.__integral_orig[pos]
      if power > 0:  tmp_dict[sympy.sympify(propagators[pos])] = power

    return tmp_dict
    
  #-------------------------------------------------------------------------------
  def __dict_to_integral(self,integral):
    integral_list = [0]*len(propagators)
    for prop, power in integral.items():
      integral_list[propagators.index(prop)] = power
  
    return integral_list
    
  #-----------------------------------------------------------------------------
  def dict(self):
    return self.__integral_dict
  

  #-----------------------------------------------------------------------------
  def add_symmetry(self, symtype):

    new_dict = dict()
    for key, value in self.__integral_dict.items():
      new_key = None
      # k = p-k
      if symtype == "shift":
        new_key = sympy.sympify(key).subs(k,p-k)
      # v3 <-> v4
      elif symtype == "swap":
        new_key = sympy.sympify(key).subs(v3,tmp)
        new_key = sympy.sympify(new_key).subs(v4,v3)
        new_key = sympy.sympify(new_key).subs(tmp,v4)
      else: continue
      new_dict[new_key] = value
    new_integral = self.__dict_to_integral(new_dict)

    in_orig = (new_integral in integrals_list)

    if in_orig: 
      nint = integrals_list.index(new_integral) + 1
      self.__equivalents.append(nint)

  #-----------------------------------------------------------------------------
  def num(self):
    return self.__number

  #-----------------------------------------------------------------------------
  def equivalents(self):
    return self.__equivalents

  #-----------------------------------------------------------------------------
  def integral(self):
    return self.__integral_orig

  #-----------------------------------------------------------------------------
  def string(self):
    return ",".join([str(x) for x in self.__integral_orig])

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def dict_to_integral(integral):
  integral_list = [0]*len(propagators)
  for prop, power in integral.items():
    integral_list[propagators.index(prop)] = power

  return integral_list

#-------------------------------------------------------------------------------
def integral_to_string(integral):
  return ",".join([str(x) for x in integral])

#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  # read integrals from input file into a list of lists 
  # and into a lists of Integral objects
  integrals_list = []
  integrals_objects = []
  with open(args.integrals) as fh:
    counter = 1
    for integral in fh.read().split():
      integral_list = [int(x) for x in integral.split(",")]
      integrals_list.append(integral_list)
      integrals_objects.append(Integral(integral_list, counter))
      counter += 1

  for integral in integrals_objects:
    integral.add_symmetry("shift")
    integral.add_symmetry("swap")

  if args.format == "all":
    for integral in integrals_objects:
      print(integral.equivalents())

  elif args.format == "unique":
    unique_relations = []
    for integral in integrals_objects:
      relation = sorted(list(set(integral.equivalents())))
      if relation not in unique_relations:
        unique_relations.append(relation)
        #print(relation)
    for relation in sorted(unique_relations):
      if args.verbose:
        verbrelation = [integrals_objects[i-1].string() for i in relation]
        print(verbrelation)
      else:
        print(relation)
  elif args.format == "min":
    minimal_list = []
    minimal_objects = []
    numbers_before = []
    for integral in integrals_objects:
      #print(integral.num(), numbers_before)  
      num = integral.num() 
      if num not in numbers_before: 
        minimal_list.append(num)
        minimal_objects.append(integral)

      numbers_before = list(set(numbers_before + integral.equivalents()))
      
    for number, integral in zip(minimal_list, minimal_objects):
      print(integral.string())
      #print("{0:>4}  {1}".format(number, integral.string()))

#-----------------------------------------------------------------------------
# old code
#-----------------------------------------------------------------------------
  #  if args.verbose:
  #    print("{0:>4}  {1}   {2}  {3}".format(count, oldstr, newstr, nint))
  #  count += 1
  #  sorted_relation = sorted(equivalent_integrals)
  #  if sorted_relation not in integral_relations:
  #    integral_relations.append(sorted_relation)

    

  #### test that the convertion from dictionary to list works as expected 
  #### and it recovers the original integrals
  ##
  ##for integral in integrals_dicts:
  ##  print(",".join([str(x) for x in dict_to_integral(integral)]))
