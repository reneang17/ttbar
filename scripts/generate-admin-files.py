#!/usr/bin/env python3
#
# todo:
#

import argparse
import multiprocessing
import os
import pickle
import re
import string
import pyIdSolver

parser =  argparse.ArgumentParser()
parser.add_argument("startinglist",
                    help="file with list of IBPs in FIRE format")
parser.add_argument("sectors",nargs='+', type=int,
                    help="sectors in the format 1 -1 -1 1 1 1, "+\
                         "where 1 means that the given propagator can be a "+\
                         "denominator or a numerator, while -1 allows a "+\
                         "propagator to be only a denominator")
parser.add_argument("--nprocmax", "-n", type=int, default = 4,
                    help = "max number of parallel processes")
parser.add_argument("--ndenmax", "-d", type=int, default = 16,
                    help = "consider only prototypes with NDENMAX number of "+\
                           "denominators")
parser.add_argument("--info", "-i", action="store_true", \
                    help="print only basic info and exit program")
parser.add_argument("--min", "--minimal", action="store_true", \
                    help="reduce prototype set to minimum")
parser.add_argument("--nosym", action="store_true", \
                    help="do not generate symmetry identities")
parser.add_argument("--verbose", "-v", action="store_true", \
                    help="print more information into stdout")
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

#-------------------------------------------------------------------------------
# function called recursively to form all possible lists of sectors
#-------------------------------------------------------------------------------
def call_append(protolist):
  newprotolist = []
  for oldlist in protolist:
    for one in [1,-1]:
      newlist = oldlist + [one]
      newprotolist.append(newlist)
  return newprotolist


#-------------------------------------------------------------------------------
# Prepare list of sectors taking into account the number of propagators and
# the zero sectors. The former is infered from the length of sectors list.
# The list returned by this function is sorted in increasing number of
# denominators.
# 
# Number of propagators = 2^{number of indices - number of zero sectors}
#-------------------------------------------------------------------------------
def generate_sorted_sectors_list(sectors, zeroindices):

  protolist = [[]]
  for i in range(0,len(args.sectors)):
    protolist = call_append(protolist)

  finalprotolist = []
  for prototype in protolist:
    accept = True
    for zeroindex in zeroindices:
      if prototype[zeroindex] < 0:
        accept = False
        break
    if accept: finalprotolist.append(prototype)

  return sorted(finalprotolist, key = lambda x: -x.count(-1))


#-------------------------------------------------------------------------------
# FORM file with id statems transforming the result from prototypes to integrals
#-------------------------------------------------------------------------------
def form_result_with_integrals(prototype_list):
  
  args_str = ",".join("n{0}?".format(i+1) \
                      for i in range(0,prototype_list[0].nindices()))
  idstr = ""
  for prototype in prototype_list:
    idstr += "id {0}({1}) = I({2});\n\n".\
             format(prototype.name(), args_str, \
                    ",".join(prototype.symbolic_integral()))
    #print(prototype.description())
  with open("finalsubstitutions","w") as formfile:
    formfile.write(idstr)


#-------------------------------------------------------------------------------
# Create content of decls file
#-------------------------------------------------------------------------------
def create_decls_file_content(nproto, nprop):

  content = "Off Statistics;\n\n"

  # propagator tables
  for i in range (0, nproto):
    content += "table sparse PR{0}({1});\n".format(i,nprop)

  # indices
  indicesstr = " ".join("n{0}".format(i+1) for i in range(0,nprop))
  content += "\ns {0};\n".format(indicesstr)

  # symbols and functions

  content +="\n"
  content +="cf replace; * necessary for two stage replace\n\n"
  content +="table sparse I({0});\n\n".format(nprop)
  content +="s d ep ap a c x qT2 m2;\n"

  return content

#-------------------------------------------------------------------------------
# Create content of  generate-identities.sh script
#-------------------------------------------------------------------------------
def create_generate_identities_script_content(prototype_list, nprop):

  nproto = len(prototype_list)
  content = "#!/bin/bash\n\n"
  
  for i in range (0, nproto):
    content += "./generate_identities PR{0:<6} {1} {2} 1 1 ep ap x\n".\
               format(i,nprop,prototype_list[i].nden())

  return content


#-------------------------------------------------------------------------------
# Generate content of identities.prc file by iterating over all IBPs for a
# given prototype
#-------------------------------------------------------------------------------
def create_identities_file_content(ibp_list, proto, nproto):

  name = proto.name()
  nindices = proto.nindices()
  idcounter = 0
  indices_orig = ",".join("n{0}".format(i+1) for i in range(0,nindices))
  
  # initial block
  content = \
  "#procedure {0}identities({1})\n\n".format(name, indices_orig)+\
  "#-\n"+\
  "#include decls\n\n"

  # central part with identities
  for ibp in ibp_list:
    idcounter += 1
    ibp_in_proto_notation = ibp.in_prototype_notation(proto)

    content += "l id{0} =\n".format(idcounter)

    for coefficient, prototype, in ibp_in_proto_notation:
      if coefficient == 0: continue 
      indices = ",".join(str(e) for e in prototype)
      content +=\
      "         + {0}({1}) * ( {2} )\n\n".format(name, indices, coefficient)

    content = content.strip('\n')
    content += ";\n\n"
    if not "PR" in content: return ""

  # final part of the indentities file
  mulstr = ",".join("n{0},`n{0}'".format(i+1) for i in range(0,nindices))
  content += "mul replace_({0});\n".format(mulstr)+\
  "id replace(?args) = replace_(?args);\n\n"+\
  "#include {0}matchings\n\n".format(name)+\
  "b PR0, ..., PR{0}; *bracketing format\n".format(nproto-1)+\
  "print;\n"+\
  ".end\n"

  "#endprocedure\n"

  return content

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def create_symmetries_file_content(proto, nproto):

  nindices = proto.nindices()
  nden = proto.nden()
  name = proto.name()
  indices = ["n{0}".format(i+1) for i in range(0,nindices)]
  indices_str = ",".join(indices)

  mulstr = ",".join(["n{0},`n{0}'".format(i+1) for i in range(0,nindices)])

  content = "#procedure {0}symmetries({1})\n\n".format(name, indices_str)+\
            "#-\n"+\
            "#include decls\n\n"

  if not args.nosym:
    # conversion list of the mapped prototype
    mapped_conversion = [pyIdSolver.Prototype.mapping.index(i)+1 for i in proto.conversion_list()]

    # map indices of PR?? according to the mapped_conversion list
    mapped_indices =  \
      [proto.conversion_list().index(num)+1 for num in mapped_conversion]
    mapped_indices_str =  ",".join(["n{0}".format(i) for i in mapped_indices])

    # check if the prototype has shift symmetry
    # prototype has a symmetry if the set of denominators (nden first indices)
    # does not change after the shift but only gets reshuffled
    index_set_orig = set(list(range(1,nden+1)))
    index_set_mapped =  set(mapped_indices[:nden])
    has_symmetry = (index_set_orig == index_set_mapped)
    #print(name, has_symmetry)
    if has_symmetry:
      content +="l id{0} =\n".format(1)+\
                "         + {0}({1}) * ( {2} )\n\n".format(name, indices_str, 1)+\
                "         + {0}({1}) * ( {2} );\n\n".format(name, \
                                                      mapped_indices_str, -1)+\
                "mul replace_({0});\n".format(mulstr)+\
                "id replace(?args) = replace_(?args);\n\n"+\
                "#include {0}matchings\n\n".format(name)


  content +="b PR0, ..., PR{0}; *bracketing format\n".format(nproto-1)+\
            "print;\n"+\
            ".end\n\n"+\
            "#endprocedure\n"

  return content

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
class MatchingContent:
  def __init__(self, matching_file_content, matchings_file_content):
    self.__matching_file_content = matching_file_content
    self.__matchings_file_content = matchings_file_content

  def matching_file_content(self):
    return self.__matching_file_content

  def matchings_file_content(self):
    return self.__matchings_file_content


#-----------------------------------------------------------------------------
# generate n=len(inlist) lists with 'number' replacing '0'
#-----------------------------------------------------------------------------
def spread_number(inlist, number):

  all_lists = []
  for ll in inlist:
    for idx in range(0,len(ll)):
      tmp_list = ll[:]
      if ll[idx] == '0':
        tmp_list[idx] = str(number) 
      if not tmp_list in all_lists:
        all_lists.append(tmp_list)

  return all_lists

#-----------------------------------------------------------------------------
# Generate content of matching.prc and matchings files
#-----------------------------------------------------------------------------
def create_matching_and_matchings_file_content(proto, prototype_list, \
                                               duplicate_dict):

  content = ""
  matchings = [proto.name()]
  # iterate over prototypes with zeros contained in the given prototype
  # zero_proto: one of the prototypes with zeros belonging to that protototype
  # list_orig: ['n1', 'n2', '0', ...] list of the original zero prototype
  # list_match: similar list but for the matched (lower) prototype
  for prototype_tuple in proto.prototypes_with_zeros():
    zero_proto_id = prototype_tuple[0] # id
    zero_proto_conversion_list = prototype_tuple[1] # prototype
    list_orig = ["n{0}".format(i+1)  if zero_proto_conversion_list[i] != 0 else '0' \
                  for i in range(0,proto.nindices())]
    match_proto_conversion_list =  \
                prototype_list[protoid_dict[zero_proto_id]].conversion_list()

    # zero in list_orig means that the given propagator does not appear; but
    # propagators appear at different positions in different prototypes; here we
    # scan the orginal prototype from left to right, and for non-zero entry, we
    # determin, which propagator it corresponds to, this is given by
    # zero_proto_conversion_list[i], then search this value in the conversion
    # list of the matched (lower) prototype and put the corresponding n_i value
    # from the original prototype to the matched prototype
    list_match = ['0']*proto.nindices()
    for i in range(0,proto.nindices()):
      if zero_proto_conversion_list[i] != 0:
        list_match[match_proto_conversion_list.index(zero_proto_conversion_list[i])] = \
                                                            'n{0}'.format(i+1)
    match_proto_name  = prototype_list[protoid_dict[zero_proto_id]].name()

    #print(match_proto_name, duplicate_dict.get(match_proto_name))
    duplicate = duplicate_dict.get(match_proto_name)
    if duplicate:
      duplicate_name = duplicate[0]
      duplicate_conv_list = duplicate[1]

      new_list_match = []
      for element in duplicate_conv_list:
        new_list_match.append(list_match[element-1])
      match_proto_name = duplicate_name
      list_match = new_list_match

    # prepare extened list_orig-type lists with 0 and -1
    n = list_orig.count('0')
    list_orig_tmp = ['0']*n
    list_orig_sub = [list_orig_tmp]
    for i in range(0,n):
      list_orig_sub = spread_number(list_orig_sub, '-1')
    list_orig_sub = list_orig_sub+[list_orig_tmp]

    # add matching of this zero_prototype to content strings
    for lsub in list_orig_sub:
      tmp_list_orig = list_orig[:]
      tmp_list_match = list_match[:]
      idx = 0
      for i in range(0,len(list_orig)):
        if list_orig[i] == '0': 
          tmp_list_orig[i] = lsub[idx]
          idx += 1
      idx = 0
      for i in range(0,len(list_match)):
        if list_match[i] == '0': 
          tmp_list_match[i] = lsub[idx]
          idx += 1

      args_left = ",".join("{0}?".format(s) if s not in lsub else s for s in tmp_list_orig)
      args_right = ",".join("{0}".format(s) if s not in lsub else s for s in tmp_list_match)

      if content == "": word = "if" 
      else: word = "elseif"

      content += \
      "{0}(match({1}({2})));\n\n".format(word, proto.name(), args_left) +\
      "  id {0}({1})  = {2}({3});\n\n".format(proto.name(), args_left, \
                                              match_proto_name, args_right);
    
    if match_proto_name not in matchings:
      matchings.append(match_proto_name)


  # create matchings which set zero sectors to zero;
  # zero_proto below is in fact a conversion list with a single index replaced
  # with zero; and this index corresponds to zero sector
  for zero_proto in proto.zero_prototypes():
    list_orig = ["n{0}".format(i+1)  if zero_proto[i] != 0 else '0' \
                  for i in range(0,proto.nindices())]

    if content == "": word = "if"
    else: word = "elseif"
    args_left = ",".join("{0}?".format(s) if s != '0' else '0' for s in list_orig)
    content += \
    "{0}(match({1}({2})));\n\n".format(word, proto.name(), args_left) + \
    "  id {0}({1})  = 0;\n\n".format(proto.name(), args_left)

  # final part of the content
  if content != "": content += "endif;\n\n"

  matching_file_content = \
    "#procedure {0}matching\n\n".format(proto.name())+\
    content+\
    ".sort:{0};\n\n".format(proto.name())+\
    "#endprocedure\n"

  matchings_file_content =  ""
  for procedure in matchings:
    matchings_file_content += "#call {0}matching\n".format(procedure)

  #return matching_file_content
  return MatchingContent(matching_file_content, matchings_file_content)

#-----------------------------------------------------------------------------
# Generate content of duplicate.prc and duplicates files
#-----------------------------------------------------------------------------
def create_duplicates_dict(proto, prototype_list):

  duplicates = {}
  # new, duplicate, lower prototype
  duplicate_proto = prototype_list[protoid_dict[proto.shifted_id()]]
  if duplicate_proto.number() < proto.number():
    list_duplicate = [0]*proto.nindices()
    mapped_conversion = [pyIdSolver.Prototype.mapping.index(i)+1 for i in proto.conversion_list()]
    for i in range(0,proto.nindices()):
      list_duplicate[duplicate_proto.conversion_list().index(mapped_conversion[i])] = i+1
      #list_duplicate[duplicate_proto.conversion_list().index(proto.conversion_list()[i])] = i+1

    #print(proto.name(), proto.conversion_list())
    #print(duplicate_proto.name(), duplicate_proto.conversion_list())
    #print(proto.name(), [pyIdSolver.Prototype.mapping.index(i)+1 for i in proto.conversion_list()])

    duplicates[proto.name()] = (duplicate_proto.name(), list_duplicate)

  return duplicates

#-----------------------------------------------------------------------------
# Worker class for multiprocessing. Generate and write administrative files: 
# indentities.prc, matching.prc, matchings, symmetries.prc .
#-----------------------------------------------------------------------------
def worker(proto):
  print("Processing {0}... sector {1}".format(proto.name(), proto.sector()))

  # identities.prc
  identities_file_content = \
    create_identities_file_content(IBP_list, proto, len(prototype_list))
  identities_file_name  ="{0}identities.prc".format(proto.name())
  with open(identities_file_name,"w") as identities_file:
    identities_file.write(identities_file_content)

  # matching.prc
  matching_content = \
    create_matching_and_matchings_file_content(proto, prototype_list,\
                                               duplicate_dict)

  matching_file_name  ="{0}matching.prc".format(proto.name())
  with open(matching_file_name,"w") as matching_file:
    matching_file.write(matching_content.matching_file_content())

  # matchings
  matchings_file_name  ="{0}matchings".format(proto.name())
  with open(matchings_file_name,"w") as matchings_file:
    matchings_file.write(matching_content.matchings_file_content())

  # symmetries.prc
  symmetries_file_name = "{0}symmetries.prc".format(proto.name())
  symmetries_file_content =  \
           create_symmetries_file_content(proto, len(prototype_list))
  with open(symmetries_file_name,"w") as symmetries_file:
    symmetries_file.write(symmetries_file_content)


#-------------------------------------------------------------------------------
# Print basic info 
#-------------------------------------------------------------------------------
def print_info(sectors_list):
  
  outstr = "Number of prototypes: {0}".format(len(sectors_list))
  print(outstr)

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
#
# prototype_list: list of Prototype object; each prototype contains a lot of
#                 information like sector, id, name, zero sectors, sectors 
#                 with zeros and more
#
# protoid_dict:   dictionary {prototype id: prototype}
#
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':
  #-----------------------------------------------------------------------------
  # determine zero indices and prepare sectors list
  #-----------------------------------------------------------------------------
  zeroindices = [i for i in range(0,len(args.sectors)) \
                 if args.sectors[i] < 0]
  sectors_list = generate_sorted_sectors_list(args.sectors, zeroindices)
  
  print_info(sectors_list)
  if args.info: exit(1)

  #-----------------------------------------------------------------------------
  # create list of prototypes and dictionary {prototype id: prototype number}
  #-----------------------------------------------------------------------------
  prototype_list = []
  protoid_dict = {}
  print("Creating prototypes...")
  for i in range(0,len(sectors_list)):
    proto_name = "PR{0}".format(i)
    # stop prototypes generation if limit of number of denominators is reached
    nden = sectors_list[i].count(1) 
    if nden > args.ndenmax: break
    prototype = pyIdSolver.Prototype(proto_name, sectors_list[i], zeroindices)
    prototype_list.append(prototype)
    protoid_dict[prototype.id()] = i
    if args.verbose:
      print(prototype_list[i].description(), \
            prototype_list[i].conversion_list(),\
            prototype_list[i].inverse_conversion_list())

  # save the list of prototypes in binary file
  pickleFileName = "prototypes.pickle"
  with open(pickleFileName, 'wb') as fh:
    pickle.dump(prototype_list, fh, pickle.HIGHEST_PROTOCOL)
  
  #-----------------------------------------------------------------------------
  # create list of IBPs
  #-----------------------------------------------------------------------------
  IBP_list = []
  with open(args.startinglist) as infile:
    # transfrer Mathematica/FIRE list of IBPs into Python format
    IBPs = math_fire_list_to_python_list(infile.read())
    # generate list of IBP objects
    for ibpstr in IBPs:
      ibp = pyIdSolver.IBP(ibpstr, len(args.sectors))
      IBP_list.append(ibp)
      if args.verbose:
        print(ibp.description())

  #-----------------------------------------------------------------------------
  # generate decls file
  #-----------------------------------------------------------------------------
  decls_file_content = \
    create_decls_file_content(len(prototype_list),len(args.sectors))
  with open("decls","w") as decls_file: decls_file.write(decls_file_content)

  #-----------------------------------------------------------------------------
  # generate dictionary of duplicates
  #-----------------------------------------------------------------------------
  duplicate_dict = {}
  if args.min:
    for proto in prototype_list:
      duplicates_content = \
        create_duplicates_dict(proto, prototype_list)
      duplicate_dict.update(duplicates_content)


  #-----------------------------------------------------------------------------
  # generate and write administrative files: indentities.prc, matching.prc,
  #                                          matchings, symmetries.prc
  #-----------------------------------------------------------------------------
  pool = multiprocessing.Pool(args.nprocmax)
  for proto in prototype_list:
    pool.apply_async(worker, args=(proto, ))
  pool.close()
  pool.join()
  
  #-----------------------------------------------------------------------------
  # create FORM file with translation from prototypes to integrals
  #-----------------------------------------------------------------------------
  form_result_with_integrals(prototype_list)
