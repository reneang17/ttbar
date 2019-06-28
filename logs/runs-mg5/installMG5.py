#!/usr/bin/env python3

import argparse
import os
import stat

parser = argparse.ArgumentParser()
parser.add_argument("MG5path", help="path to MG5 directory")
parser.add_argument("name", help="name of the analysis")
args = parser.parse_args()


#------------------------------------------
def create_link(source, dest):
  if os.path.exists(dest): os.unlink(dest)
  print("Creating symbolic link",source, "->", dest)
  os.symlink(source, dest)

#------------------------------------------
# linking analysis file
analysis_file_name = "analysis_td_ttj.f"
source = os.path.abspath("analyses/{0}".format(analysis_file_name))
dest = os.path.abspath("{0}/bin/{1}/FixedOrderAnalysis/{2}".\
       format(args.MG5path,args.name, analysis_file_name))
#
create_link(source, dest)



#------------------------------------------
# link cards
files = os.listdir("{0}Cards".format(args.name))
for file in files:
  source = os.path.abspath("{0}Cards/{1}".format(args.name, file))
  dest =  os.path.abspath("{0}/bin/{1}/Cards/{2}".format(args.MG5path,args.name, file))
  create_link(source, dest)


#------------------------------------------
## create Results directory
#  resdir = os.path.abspath("{0}Results".format(args.name))
#  if not os.path.exists(resdir): os.mkdir(resdir)


#------------------------------------------
# create update file
root = os.path.abspath("{0}/bin/{1}/Events".format(args.MG5path,args.name,))

content  = """#!/usr/bin/env python3
import argparse
import os
import stat
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument("resdir", help="result directory")
args = parser.parse_args()

root = "{ROOT}"
dirs = os.listdir(root)
most_recent_dir = max((os.path.getctime(os.path.join(root, f)), f) for f in dirs)[1]

# copy to results directory
if not os.path.exists(args.resdir): os.mkdir(args.resdir)
command = "cp {MGDIR}/bin/{NAME}/Events/"+most_recent_dir+"/* " + args.resdir
subprocess.check_call(command, shell=True)

#
command = "cd " + args.resdir + "; tar xzf RunMaterial.tar.gz"
subprocess.check_call(command, shell=True)

#
print("Done.")

""".format(ROOT=root, MGDIR=args.MG5path,NAME=args.name)

fname = "update.py"
with open(fname, "w") as fh:
  fh.write(content)
  os.chmod(fname, stat.S_IRWXU | stat.S_IRWXG | stat.S_IRWXO)

#
