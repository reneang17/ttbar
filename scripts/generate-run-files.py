#!/usr/bin/env python3
#
# todo:
#

import argparse
import os
import pickle
import stat
import pyIdSolver

parser =  argparse.ArgumentParser()
parser.add_argument("d", help="maximal sum of powers of denominators")
parser.add_argument("n", help="maximal sum of powers of numerators")
parser.add_argument("--local", action="store_true", \
                    help="generate local scripts rather than batch files")
parser.add_argument("--num", action="store_true", \
                    help="substitute numerical values for parameters")

parser.add_argument("-f", "--file", \
                    help="list of prototypes for which te files are to be generated")
parser.add_argument("-d", "--directory", default="", \
                    help="specific diretory were the databases should be copied")
args = parser.parse_args()


#-------------------------------------------------------------------------------
# Check if directory asked for in command line exists and adjust it
#-------------------------------------------------------------------------------
def check_create_directory():

  directory = ""
  if args.directory != "": directory = "{0}/".format(args.directory)

  abs_path = os.path.abspath(args.directory)

  if not os.path.isdir(abs_path):
    print("Error: Directory {0} does not exist!".format(args.directory))
    exit(1)


  return directory

#-------------------------------------------------------------------------------
# Generate bash scripts to be run locally
#-------------------------------------------------------------------------------
def generate_local_scripts(prototype_list, nprop, parstr):

  for proto in prototype_list:
    fname = "run-{0}.sh".format(proto.name())
    content = "#!/bin/bash\n\n"
    content += "./generate_identities {0} {1} {2} {3} {4} {5}\n".\
                format(proto.name(),nprop,proto.nden(),args.d,args.n, parstr)

    with open(fname, "w") as runfile:  
     runfile.write(content)
     os.chmod(fname, stat.S_IRWXU | stat.S_IRWXG | stat.S_IRWXO)

#-------------------------------------------------------------------------------
# Generate batch scripts to be run on cluster
#-------------------------------------------------------------------------------
def generate_batch_files(prototype_list, nprop, parstr):

  for proto in prototype_list:
    nden = proto.nden()
    name = proto.name()
    fname = "batch-{0}-{1}.sh".format(name,nden)

    # determine list of matching.prc files
    matching_file_list = []
    machingsfile = "{0}matchings".format(name)
    with open(machingsfile) as fh:
      for rawfname in fh.readlines():
        prcfname = "{0}.prc".format(rawfname.rstrip("\n").lstrip("#call ")) 
        matching_file_list.append(prcfname)

    # content
    content  = "#\n"
    content += "INCFILE={0}inc.dat\n".format(name)
    content += "IDFILE=id{0}.dat\n".format(name)
    content += "\n"
    content += "DIR={0}\n".format(os.getcwd())
    content += "\n"
    content += "cp $DIR/generate_identities $WORKDIR\n"
    content += "cp $DIR/{0}identities.prc $WORKDIR\n".format(name)
    content += "cp $DIR/{0}matchings $WORKDIR\n".format(name)

    # add matching files
    for prcfname in matching_file_list:
      content += "cp $DIR/{0} $WORKDIR\n".format(prcfname)

    content += "cp $DIR/{0}symmetries.prc $WORKDIR\n".format(name)
    content += "cp $DIR/decls $WORKDIR\n"
    content += "cp -v /afs/cern.ch/work/s/sapeta/heptools/form-4.1/bin/form $WORKDIR\n"
    content += "\n"
    content += "echo \"\"\n\n"
    content += "if [ -f $DIR/$INCFILE ]; then\n"
    content += "  cp $DIR/$INCFILE $WORKDIR\n"
    content += "  cp $DIR/$IDFILE $WORKDIR\n"
    content += "  echo \"Building on top of existing databases.\"\n"
    content += "else\n"
    content += "  echo \"Building databases from scratch:\"\n"
    content += "fi\n"
    content += "\n"
    content += "form() {\n"
    content += "    $WORKDIR/form \"$@\"\n"
    content += "    }\n"
    content += "export -f form\n"
    content += "\n"
    content += "$WORKDIR/generate_identities  {0} {1} {2} {3} {4} -d 1000000 -e -n {5}\n".\
                format(name,nprop,nden,args.d,args.n, parstr)
    content += "\n"
    content += "echo \"Generation:\" $?\n"

    directory= check_create_directory()

    content += "\n\n"
    content += "echo \"\"\n\n"
    content += "# copy databaes only if they were correctly generated\n"
    content += "if [ -f $WORKDIR/$INCFILE ]; then\n"
    content += "  echo \"Copying generated databases.\"\n"
    content += "  cp -v $WORKDIR/$INCFILE $DIR/{0}\n".format(directory)
    content += "  cp -v $WORKDIR/$IDFILE $DIR/{0}\n".format(directory)
    content += "else\n"
    content += "  echo \"Error in databases generation. Databases were not copied.\"\n"
    content += "fi\n"


    print("Generating {0} ...".format(fname))
    with open(fname, "w") as batchfile:  
     batchfile.write(content)
     os.chmod(fname, stat.S_IRWXU | stat.S_IRWXG | stat.S_IRWXO)

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
def select_prototypes(prototype_list, file):

  selected_numbers = []
  selected_prototypes = []

  with open(file) as fh:
    selected_numbers = [int(x) for x in fh.read().split()]

  for i in range (0, len(prototype_list)):
    if i in selected_numbers:
      selected_prototypes.append(prototype_list[i])

  return selected_prototypes

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#                            MAIN PART OF THE SCRIPT
#
# The program uses the following key objects:
#
# prototype_list: list of Prototype object; each prototype contains a lot of
#                 information like sector, id, name, zero sectors, sectors 
#                 with zeros and more
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if __name__ == '__main__':

  #-----------------------------------------------------------------------------
  # read the list of prototypes from binary file
  #-----------------------------------------------------------------------------
  try:
    pickleFileName = "prototypes.pickle"
    with open(pickleFileName, 'rb') as fh:
      prototype_list = pickle.load(fh)
  except FileNotFoundError as err:
    print("Error: File '{0}' does not exist.".format(pickleFileName),\
          "Run 'generate-admin-files.py' first.")
    exit(1)

  parstr = "ep ap b c qT2"
  if args.num:
    with open("parstr.dat") as fh: 
      parstr = fh.read()

  #-----------------------------------------------------------------------------
  # read the list of prototypes for which the files are to be generated 
  # (all if the list is empty)
  #-----------------------------------------------------------------------------
  if args.file != None:
    prototype_list = select_prototypes(prototype_list,args.file)

  #-----------------------------------------------------------------------------
  # generate local or batch run files
  #-----------------------------------------------------------------------------
  if args.local:
    generate_local_scripts(prototype_list,prototype_list[0].nindices(), parstr)
  else:
    generate_batch_files(prototype_list,prototype_list[0].nindices(),parstr)
