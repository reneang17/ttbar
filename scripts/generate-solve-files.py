#!/usr/bin/env python3
#
# todo:
#

import argparse
import os
import re
import pickle
import stat
import pyIdSolver

parser =  argparse.ArgumentParser()
parser.add_argument("file", \
                    help="list of prototypes to be solved")
parser.add_argument("--num", "-n", action="store_true",\
                    help="reduce with numerical values")
args = parser.parse_args()


#-------------------------------------------------------------------------------
# Generate batch scripts to be run on cluster
#-------------------------------------------------------------------------------
def generate_batch_files(proto_list, parstr):

  proto_re = re.compile('PR')
  proto_re = re.compile('PR(\d+)')

  # iterate over integral files (hence effectively the integrals to solve)
  for i in range(0,len(proto_list)):
    PRname = "PR{0}".format(proto_list[i])
    fname = "batch-integral{0}.sh".format(i)

    # determine list of required databases
    matching_file_list = []
    matchingsfile = "{0}matchings".format(PRname)
    db_numbers = []
    with open(matchingsfile) as fh:
      tmpstr = fh.read()
      db_numbers = proto_re.findall(tmpstr)

    # content
    content  = "#\n"
    content += "INTEGRALFILE=tmpintegral{0}\n".format(i)
    content += "OUTFILE=out{0}\n".format(i)
    content += "STDOUTFILE=stdout{0}\n".format(i)
    content += "\n"
    content += "DIR=/afs/cern.ch/user/s/sapeta/workspace/work/ttbar/idsolver/nnlo\n"
    content += "\n"
    content += "cp $DIR/solve_integrals  .\n"
    content += "cp $DIR/$INTEGRALFILE .\n"

    for dbnum in db_numbers:
      content += "cp $DIR/idPR{0}.dat .\n".format(dbnum)
      content += "cp $DIR/PR{0}inc.dat .\n".format(dbnum)

    content += "\n"
    content += "form() {\n"
    content += "    /afs/cern.ch/user/s/sapeta/local/bin/form \"$@\"\n"
    content += "    }\n"
    content += "export -f form\n"
    content += "\n"
    content += "time $DIR/solve_integrals $INTEGRALFILE $OUTFILE {0} > $STDOUTFILE\n".\
                format(parstr)
    content += "\n"
    content += "cp $INTEGRALFILE $DIR/\n"
    content += "cp $OUTFILE $DIR/\n"
    content += "cp $STDOUTFILE $DIR/\n"


    with open(fname, "w") as batchfile:  
     batchfile.write(content)
     os.chmod(fname, stat.S_IRWXU | stat.S_IRWXG | stat.S_IRWXO)

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def split_integrals_into_sublists(file):

  integrals = []
  prototype_numbers = []
  proto_re = re.compile('PR(\d+)')

  with open(file) as fh:
    integrals = fh.read().split()

  #sublists = \
  #[integrals[x:x+args.npack] for x in range(0,len(integrals),args.npack)]

  for i in range(0,len(integrals)):
    fname = "tmpintegral{0}".format(i)
    print(fname, integrals[i])
    with open(fname, "w") as integral_file:  
      n = int(proto_re.findall(integrals[i])[0])
      prototype_numbers.append(n)
      integral_file.write(integrals[i]+"\n")
  
  return prototype_numbers
  

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#                            MAIN PART OF THE SCRIPT
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  parstr = "ep ap b c qT2"
  if args.num:
    parstr = "ep=1/2749 ap=1/3089 b=1/1453 c=1/2857 qT2=1/3557"

  #-----------------------------------------------------------------------------
  #-----------------------------------------------------------------------------
  proto_list = split_integrals_into_sublists(args.file)

  #-----------------------------------------------------------------------------
  # generate batch run files
  #-----------------------------------------------------------------------------
  generate_batch_files(proto_list,parstr)
