#!/usr/bin/env python3
#
# todo:
#

import argparse
import string
import os
import stat

parser =  argparse.ArgumentParser()
parser.add_argument("inputfile",
                    help="template Powheg input file")
parser.add_argument("nseeds",type=int,
                    help="template Powheg input file")
args = parser.parse_args()

#-------------------------------------------------------------------------------
# main part
#-------------------------------------------------------------------------------
if __name__ == '__main__':
   
  # generate seed list
  with open("seedlist.txt") as fh:
      seed_list = [int(x) for x in fh.read().strip("[").strip("]\n").split(",")]

  for iseed in range(0,args.nseeds):
    # --------------------------------------------------------------------------
    # generate input files
    # --------------------------------------------------------------------------
    runstr = "{0}seed{1}".\
             format(args.inputfile.split("input")[1].split("-powheg")[0],iseed)
    
    with open(args.inputfile) as fh:
      incontent = fh.read()
      inputfname = "{0}-powheg.input".format(runstr)
      print(inputfname)
      content = incontent.replace("SEED", str(seed_list[iseed]))
      with open(inputfname, "w") as analysis_file: analysis_file.write(content)

    # --------------------------------------------------------------------------
    # generate batch files
    # --------------------------------------------------------------------------
    content  = "#\n\n"
    content += "DIR={0}\n".format(os.getcwd())
    content += "cp $DIR/pwhg_main-gnu $WORKDIR\n"
    content += "cp $DIR/{0} $WORKDIR\n".format(inputfname)
    content += "$WORKDIR/pwhg_main-gnu <<< {0}\n".\
                format(inputfname.split("-powheg")[0])
    content += "cp $WORKDIR/{0}-NLO.top $DIR\n".format(runstr)

    fname = "batch-{0}.sh".format(runstr)
    print("Generating {0} ...".format(fname))

    with open(fname, "w") as batchfile:
       batchfile.write(content)
       os.chmod(fname, stat.S_IRWXU | stat.S_IRWXG | stat.S_IRWXO)
