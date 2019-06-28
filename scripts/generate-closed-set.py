#!/usr/bin/env python3
#
# todo:
#

import argparse
import subprocess
import os
import pickle
import re
import string
import collections
import pyIdSolver

parser =  argparse.ArgumentParser(
formatter_class=argparse.RawTextHelpFormatter,\
description="""

Three-stage reduction:

  1. 
     i.   Reduce the original integral. This gives masters1.
     ii.  Differentiate masters1.
  2. 
     i.   Reduce integrals from the above diffentiation. This gives masters2. 
     ii.  Set of masters2 can be larger than masters1. That is why we need
          another differentiation.
     iii. Differentiate masters2. 
  3. 
     i.   Reduce integrals from the above diffentiation. This gives masters3.
          And the set masters3 should be indetical to masters2. Then we have a
          closed system of differential equations.
"""
)
parser.add_argument("file",\
                    help = ("input file (the same as for solve_integrals)"))
parser.add_argument("--analytic","-a", action = "store_true", \
                    help = ("reduce with analytic paramteres"))
parser.add_argument("--reduction2","--r2", action = "store_true", \
                    help = ("start from second reduction; if this option is chosen, the input file is expected be the output of the original reduction preforemd earlier"))
parser.add_argument("--verbose","-v", action = "store_true", \
                    help = ("verbose output"))
args = parser.parse_args()

#-------------------------------------------------------------------------------
# Check output to look integrals that were not reduced
#-------------------------------------------------------------------------------
def check_not_found(output):

  re_lists = re.compile('\{([^\}\{]+)\}')
  # and it will be followed by integrals
  re_not_found = re.compile('(PR\d+\([^\)]*\))\s+(not found)')
  all_not_found = re_not_found.findall(output)

  not_found_list = [x[0] for x in all_not_found]

  return not_found_list

#-----------------------------------------------------------------------------
# replaces prototypes by integrals
#-----------------------------------------------------------------------------
def prototypes_to_integrals(fname):
  commandlist=["substitute-prototypes.py", fname]
  p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  out, err = p.communicate()
  substitute_output = out.decode("utf-8")
  p.wait()
  return substitute_output

#-----------------------------------------------------------------------------
# extract integrals
#-----------------------------------------------------------------------------
def extract_integrals(fname):
  commandlist=["extract-integrals.py", fname]
  p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  out, err = p.communicate()
  extract_output = out.decode("utf-8")
  p.wait()
  print("extract_integrals:")
  print(extract_output)

  return extract_output


#-----------------------------------------------------------------------------
#
#-----------------------------------------------------------------------------
def substitute_prototypes_extract_integrals(fname):

  tmpfile = ".tmp1"

  with open(tmpfile, "w") as fh: fh.write(prototypes_to_integrals(fname))
  extract_output = extract_integrals(tmpfile)
  os.remove(tmpfile)

  #print(extract_output.split('\n'))
  

  return extract_output

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
def generate_mathematica_replacements(fill_file, master_list):

  masters_proto = [x.protostr() for x in master_list]
  masters_integrals = [x.integral() for x in master_list]
  print(masters_integrals)

  content = ""

  # get content of fill file and replace PR(...) on rhs by M\d
  with open(fill_file) as fh:
    content = fh.read()
    for i in range(0,len(masters_proto)):
      content = content.replace(masters_proto[i], \
                 "G[{0}]".format(",".join([str(x) for x in masters_integrals[i]])))
      #content = content.replace(masters_proto[i], "M{0}".format(i+1))

  # get list of fill blocks and disect each of them into pieces
  fill_re = re.compile('(fill [^;]*;\n\n)', re.MULTILINE)
  math_repl_list = []
  for block in fill_re.findall(content):
    # get the left hand side  so I[...]
    lhs_re = re.compile('fill (PR\d+\([^\)]*\))')
    lhs_proto_str = lhs_re.findall(block)[0]
    number  = pyIdSolver.prototype_number_from_protostr(lhs_proto_str) 
    indices = pyIdSolver.prototype_indices_from_protostr(lhs_proto_str)
    replace_lhs = "G[{0}]".format(",".join([str(x) for x in \
                        prototype_list[number].integral(indices)]))

    rhs_re = re.compile('( \+ [^\(]*)(\([^;]*);', re.MULTILINE)
    #print(rhs_re)
    #rhs_re = re.compile('( \+ [^\(]*)(\([^\)]*\))', re.MULTILINE)
    # prepare replacement block for Mathemtaica
    math_repl = "{0} ->".format(replace_lhs)
    print(math_repl)
    for x, y in rhs_re.findall(block):
      #print(x,y)
      if not args.analytic: y = 1
      math_repl += "{0}{1}".format(x, y)
    if math_repl.split("->")[1] == '':
      math_repl += "0"
    math_repl_list.append(math_repl)


  return "{{{0}}}".format(", ".join(math_repl_list))

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def generate_mathematica_differential_euqations(derivatives_file, master_list):

  master_integrals = [x.integralstr() for x in master_list]

  # get content of derivatives file and replace I' by DI and I by M\d
  content = ""
  with open(derivatives_file) as fh:
    content = fh.read().replace("I'", "DI")
    #print(content)
    #for i in range(0,len(master_integrals)):
    #  content = content.replace(master_integrals[i], "M{0}".format(i+1))

  # get list of equations
  #eq_re = re.compile('(DI(\d+)[^D]*)', re.MULTILINE)
  eq_re = re.compile('(DI[^D]*)', re.MULTILINE)
  eqs_blocks = eq_re.findall(content)
  eqs_list = ['0']*len(master_integrals)
  #eqs_list = [0]*len(eqs_blocks)
  eqs_list = []

  #print(eqs_blocks)

  print(len(eqs_blocks))

  #for equation, number in eqs_blocks:
  for equation in eqs_blocks:
    #print(number)
    sub_re = re.compile(r'I\(([^\)]*)\)')

    equation_str = \
    sub_re.sub(r'G[\1]',equation).replace('\n','').replace('=','==')
    #sub_re.sub(r'G[\1]',equation).replace('\n','')
    #eqs_list[int(number)-1] = equation_str.split('=')[1].strip(string.whitespace)
    eqs_list.append(equation_str)
    #print(equation_str)

  #print(eqs_list)
  return "{{{0}}}".format(", ".join(eqs_list))

  return content

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def differentiate_integrals(fname):

  commandlist=["differentiate-integrals.py", fname]
  #commandlist=["differentiate-integrals.py", tmpfiles["final"]]
  p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  out, err = p.communicate()
  differentiate_output = out.decode("utf-8")
  if args.verbose: 
    print("Differentiation:")
    print(differentiate_output)
  p.wait()

  return differentiate_output

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def get_integral_number(fname):
  int_re = re.compile('[a-z]*(\d+)')
  int_list = int_re.findall(fname)

  print(fname)
  return int_list[0]


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def prototype_to_integral(proto):

  tmpfile = ".tmp3"
  with open(tmpfile, "w") as fh:
    fh.write(proto)

  commandlist=["prototype-info.py", "-q", tmpfile]
  p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  out, err = p.communicate()
  output = out.decode("utf-8")
  p.wait()

  os.remove(tmpfile)

  return output

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def extract_number_from_string(fname):

  num_re = re.compile('(\d+)')
  num_list = num_re.findall(fname)

  return int(num_list[0])


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  
  intnum = get_integral_number(args.file)
  #-----------------------------------------------------------------------------
  # global_tmp_files
  
  tmpfiles = \
  collections.OrderedDict([\
                            ("reduction_output1", ".tmp_{0}_reduction_output1".format(intnum)),\
                            ("masters1", ".tmp_{0}_masters1".format(intnum)),\
                            ("derivatives1", ".tmp_{0}_derivatives1".format(intnum)),\
                            ("rhs_integrals1", ".tmp_{0}_rhs_integrals1".format(intnum)),\
                            ("rhs_prototypes1", ".tmp_{0}_rhs_prototypes1".format(intnum)),\
                            ("reduction_output2", ".tmp_{0}_reduction_output2".format(intnum)),\
                            ("masters2", ".tmp_{0}_masters2".format(intnum)),\
                            ("derivatives2", ".tmp_{0}_derivatives2".format(intnum)),\
                            ("rhs_integrals2", ".tmp_{0}_rhs_integrals2".format(intnum)),\
                            ("rhs_prototypes2", ".tmp_{0}_rhs_prototypes2".format(intnum)),\
                            ("reduction_output3", ".tmp_{0}_reduction_output3".format(intnum)),\
                            ("masters3", ".tmp_{0}_masters3".format(intnum)),\
                            ("mathematica_replacements",\
                             ".tmp_{0}_mathematica_replacements".format(intnum)),\
                            ("mathematica_differential_equations",\
                             ".tmp_{0}_mathematica_differential_equations".format(intnum))
                          ])

 
  #parameters_list = ["ep=1/2749", "ap=1/3089", "b=1/1453", "c=1/2857", "qT2=1/3557"]

  parameters_list = []
  with open("parstr.dat") as fh:
      parameters_list = fh.read().split()

  if args.analytic:
    parameters_list = ["ep", "ap", "a", "b", "c", "m2", "x"]

  picklemasters = "masters.pickle"
  picklemasters = "final.pickle"

  prototype_list = []
  try:
    pickleFileName = "prototypes.pickle"
    with open(pickleFileName, 'rb') as fh:
      prototype_list = pickle.load(fh)
  except FileNotFoundError as err:
    print("Error: File '{0}' does not exist.".format(pickleFileName),\
          "Run 'generate-admin-files.py' first.")
    exit(1)

  #-----------------------------------------------------------------------------
  # Reduce the original file (solve_integrals)
  #-----------------------------------------------------------------------------
  if not args.reduction2:
    print("Reduction of the original integrals...")
    commandlist=["solve_integrals", args.file, tmpfiles["reduction_output1"]] + parameters_list
    if args.verbose:
      print(" ".join(commandlist))
    p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
    out, err = p.communicate()
    solve_integrals_output = out.decode("utf-8")
    print(solve_integrals_output)
    p.wait()
    not_found_list = check_not_found(solve_integrals_output)

    if len(not_found_list) > 0:
      print("Not found:")
      for entry in not_found_list:
        print(entry)
  else:
    tmpfiles["reduction_output1"] = args.file

  #-----------------------------------------------------------------------------
  # Extract integrals from original reduction (in practice these are masters)
  # and save them into temporary file and into pickle
  #-----------------------------------------------------------------------------
  filesize = os.path.getsize(tmpfiles["reduction_output1"])

  master_integrals = ""

  with open(tmpfiles["masters1"], "w") as fh:
    if filesize == 0:
      master_number = extract_number_from_string(tmpfiles["reduction_output1"])
      master_prototype = pyIdSolver.get_prototype_from_list("integrals", master_number)
      master_integrals = prototype_to_integral(master_prototype)
    else:
      master_integrals = substitute_prototypes_extract_integrals(tmpfiles["reduction_output1"])
    fh.write(master_integrals)

    #re_masters = re.compile('(\d,.*)\n')
    #master_list = [pyIdSolver.Master(integral, prototype_list)  \
    #               for integral in re_masters.findall(master_integrals)]

    ## save masters to picle
    #with open(picklemasters, 'wb') as fh:
    #  pickle.dump(master_list, fh, pickle.HIGHEST_PROTOCOL)

  
  #-----------------------------------------------------------------------------
  # Differentiate masters
  #-----------------------------------------------------------------------------
  differentiate_output = differentiate_integrals(tmpfiles["masters1"])

  #commandlist=["differentiate-integrals.py", tmpfiles["masters"]]
  ##commandlist=["differentiate-integrals.py", tmpfiles["final"]]
  #p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  #out, err = p.communicate()
  #differentiate_output = out.decode("utf-8")
  #if args.verbose: 
  #  print("Differentiation:")
  #  print(differentiate_output)
  #p.wait()

  #-----------------------------------------------------------------------------
  # Extract integrals from differentiation
  #-----------------------------------------------------------------------------
  with open(tmpfiles["derivatives1"], "w") as fh: fh.write(differentiate_output)
  rhs_integrals_set  = extract_integrals(tmpfiles["derivatives1"])
  with open(tmpfiles["rhs_integrals1"], "w") as fh: fh.write(rhs_integrals_set)

  #-----------------------------------------------------------------------------
  # Reduce the  (solve_integrals)
  #-----------------------------------------------------------------------------
  commandlist=["integrals-to-prototypes.py", tmpfiles["rhs_integrals1"]]
  p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  out, err = p.communicate()
  rhs_prototypes_set = out.decode("utf-8")
  p.wait()
  with open(tmpfiles["rhs_prototypes1"], "w") as fh: fh.write(rhs_prototypes_set)

  print("Reduction of integrals from differentiation...")
  commandlist=["solve_integrals", tmpfiles["rhs_prototypes1"], tmpfiles["reduction_output2"]] + parameters_list
  p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  out, err = p.communicate()
  solve_integrals_output = out.decode("utf-8")
  print(solve_integrals_output)

  # get list of not found integrals after second reduction
  not_found_prototypes = check_not_found(solve_integrals_output)
  not_found_integrals = []
  for protostr in not_found_prototypes:
    num = pyIdSolver.prototype_number_from_protostr(protostr) 
    indices = pyIdSolver.prototype_indices_from_protostr(protostr) # proto string -> int list
    proto = prototype_list[num]
    not_found_integrals.append(proto.integral(indices))

  p.wait()


  #-----------------------------------------------------------------------------
  # Extract integrals from second reduction
  # and save the into temporary file
  #-----------------------------------------------------------------------------
  final_integrals_list =  []
  with open(tmpfiles["masters2"], "w") as fh:
    final_integrals = substitute_prototypes_extract_integrals(tmpfiles["reduction_output2"])
    fh.write(final_integrals)

    final_integrals_list = [x for x in final_integrals.split("\n") if x != '']

    # print not found integrals after second reduction if the integral is not
    # already defined as a master
    for integral in not_found_integrals:
      intstr = ",".join([str(x) for x in integral])
      if intstr not in master_integrals:
        print("Not found and not a master:", intstr)
      else:
        if args.verbose:
          print("Not found but a master:", intstr)

    # save final list of integrals
    re_masters = re.compile('(-*\d,.*)\n')
    master_list = [pyIdSolver.Master(integral, prototype_list)  \
                   for integral in re_masters.findall(final_integrals)]

    # save masters to picle
    with open(picklemasters, 'wb') as fh:
      pickle.dump(master_list, fh, pickle.HIGHEST_PROTOCOL)

  print("New masters:") 
  for integral in final_integrals_list:
    if integral not in master_integrals:
      print(integral)

  #-----------------------------------------------------------------------------
  # Differentiate final integrals
  #-----------------------------------------------------------------------------
  differentiate_output = differentiate_integrals(tmpfiles["masters2"])

  #-----------------------------------------------------------------------------
  # Extract integrals from differentiation
  #-----------------------------------------------------------------------------
  with open(tmpfiles["derivatives2"], "w") as fh: fh.write(differentiate_output)
  rhs_integrals_set  = extract_integrals(tmpfiles["derivatives2"])
  with open(tmpfiles["rhs_integrals2"], "w") as fh: fh.write(rhs_integrals_set)

  #-----------------------------------------------------------------------------
  # Reduce the  (solve_integrals)
  #-----------------------------------------------------------------------------
  commandlist=["integrals-to-prototypes.py", tmpfiles["rhs_integrals2"]]
  p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  out, err = p.communicate()
  rhs_prototypes_set = out.decode("utf-8")
  p.wait()
  with open(tmpfiles["rhs_prototypes2"], "w") as fh: fh.write(rhs_prototypes_set)

  print("Reduction of integrals from differentiation...")
  commandlist=["solve_integrals", tmpfiles["rhs_prototypes2"], tmpfiles["reduction_output3"]] + parameters_list
  p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  out, err = p.communicate()
  solve_integrals_output = out.decode("utf-8")
  print(solve_integrals_output)

  #-----------------------------------------------------------------------------
  # Extract integrals from second reduction
  # and save the into temporary file
  #-----------------------------------------------------------------------------
  final_integrals_list =  []
  with open(tmpfiles["masters3"], "w") as fh: 
    final_integrals = substitute_prototypes_extract_integrals(tmpfiles["reduction_output3"])
    fh.write(final_integrals)

    final_integrals_list = [x for x in final_integrals.split("\n") if x != '']

  #-----------------------------------------------------------------------------
  # Generate replacements form Mathematica
  #-----------------------------------------------------------------------------

  # get Masters list from pickle
  master_list = []
  with open(picklemasters, "rb") as fh:
    master_list = pickle.load(fh)


  # generate replacements and write them to file
  with open(tmpfiles["mathematica_replacements"], "w") as fh:
    content = generate_mathematica_replacements(tmpfiles["reduction_output3"],\
                                                master_list)
    fh.write(content)

  # generate differential equations and write them to a file
  with open(tmpfiles["mathematica_differential_equations"], "w") as fh:
    content = generate_mathematica_differential_euqations(tmpfiles["derivatives2"],\
                                                master_list)
    fh.write(content)
      

  #-----------------------------------------------------------------------------
  print("Temporary files:")
  for val in  tmpfiles.values():
    print(val)

