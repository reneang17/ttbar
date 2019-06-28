#!/usr/bin/env python3
#
# todo:
#

import argparse
import string
import pickle
import re
import pyIdSolver
import subprocess

parser =  argparse.ArgumentParser(description=
"""Take prototypes from a file and print corresponding integrals and their names

Example:

  $ ./prototype-info.py integrals 
  
  PR40(2,2,1,1,1,0,0,0,0,0,0,0,0,0,0,0)   0,0,2,0,0,0,2,0,0,0,0,0,0,1,1,1  I5_33
  PR45(2,2,1,1,1,0,0,0,0,0,0,0,0,0,0,0)   0,0,2,0,0,0,0,0,0,0,0,2,0,1,1,1  I9_3344
  PR76(2,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0)   0,0,0,0,0,0,2,0,0,0,0,0,1,1,1,1  I6b_33
""", formatter_class=argparse.RawTextHelpFormatter)
parser.add_argument("file",
                    help="file with list of prototypes")
parser.add_argument("--quiet", "-q", action="store_true",
                    help="show just integrals in index format")
parser.add_argument("--regular", "-r", action = "store_true",
                    help=("print integrals in nicer format"))
parser.add_argument("--math", "-m", action = "store_true",
                    help=("print results in the form of Mathematica replacements"))
parser.add_argument("--reverse", "-R", action = "store_true",
                    help=("integrals to prototypes"))

args = parser.parse_args()

#-------------------------------------------------------------------------------
def regular_form(integral):

  val = ""
  for i in integral.split(","):
    nmin = i.count("-")
    val += "{0}{1}".format(" "*(2-nmin), i)
    
  return val


#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  ##-----------------------------------------------------------------------------
  ## generate nnlo integrals
  #commandlist = ["./generate-nnlo-integrals.py", "-v"]
  #p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  #out, err = p.communicate()
  #output  = out.decode("utf-8")

  ###### old code, may or may not be useful
  ####integral_re = re.compile('(I[a-z\_\d]+)\s+([\d,]+)\n')
  ####integral_names = integral_re.findall(output)
  ####name_dict = {}
  ####for name, indices in integral_names:
  ####  name_dict[indices] = name
  ####  print(name, indices)


  #-----------------------------------------------------------------------------
  # read general list of prototype objects
  prototype_list = pyIdSolver.read_prototype_list("prototypes.pickle")

  #-----------------------------------------------------------------------------
  # read list of prototypes from input file
  input_prototypes = []
  with open(args.file) as fh:
    proto_re = re.compile('PR(\d+)\(([^\)]*)\)')
    input_prototypes = proto_re.findall(fh.read())

  #-----------------------------------------------------------------------------
  # print results
  outstr = ""
  for num, indices in input_prototypes:
    if int(num) > len(prototype_list): break
    indices_int = [int(x) for x in indices.split(",")]
    proto_object = prototype_list[int(num)]
    protostr = "PR{0}({1})".format(proto_object.number(), indices)
    integralstr = ",".join([str(x) for x in proto_object.integral(indices_int)])

    ##integral_re = re.compile('()({0})\n'.format(integralstr))
    #integral_re = re.compile('(I[a-z\_\d]+)\s+({0})\n'.format(integralstr))
    #integral_names = integral_re.findall(output)
    #name_list = [n for n, i in integral_names]

    if args.regular:
      print(regular_form(integralstr))
    elif args.quiet:
      print(integralstr)
    elif args.math:
      if args.reverse:
       outstr += "{0} -> G[{1}], ".\
                  format(protostr.replace("(","[").replace(")","]"), 
                         integralstr)
      else:
        outstr += "G[{1}] -> {0}, ".\
                   format(protostr.replace("(","[").replace(")","]"), 
                          integralstr)
    else:
      print("{0:<38}  {1}".format(protostr, integralstr,))

  
  if args.math:
    outstr = "{{{0}}}".format(outstr[:-2])
    print(outstr)



