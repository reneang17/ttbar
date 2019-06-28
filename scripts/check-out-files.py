#!/usr/bin/env python3
#
# Check if the out?? files produced by solve_integrals are correct.


import argparse
import os
import string
import subprocess

parser =  argparse.ArgumentParser()
parser.add_argument("number_of_integrals", type=int, \
                    help="number of prototypes")
parser.add_argument("--masters", "-m", action="store_true",\
                    help="collect master integrals")
args = parser.parse_args()

#-----------------------------------------------------------------------------
def check_out_file(fname):

  file = os.path.abspath(fname)
  file_exists  = os.path.isfile(file)
  file_not_empty = True
  if file_exists:
    fsize = os.path.getsize(file)
    if fsize == 0: file_not_empty = False

  outstr = ""
  if not file_exists: outstr = "Failure: file does not exist."
  if file_exists and not file_not_empty: outstr = "Failure: empty file."
  if file_exists and file_not_empty: outstr = "Success."

  return (file_exists and file_not_empty, outstr)


#-----------------------------------------------------------------------------
def collect_masters(fname):

  # substitute prototypes
  outfile1 = ".output"
  with open(outfile1, "w") as fh:
    commandlist1 = ["./substitute-prototypes.py", fname]
    p1 = subprocess.Popen(commandlist1, stdout=fh)
    p1.wait()
  # extract integrals
  commandlist2 = ["./extract-integrals.py", outfile1]
  p2 = subprocess.Popen(commandlist2, stdout=subprocess.PIPE)
  p2.wait()

  #out, err = p2.communicate()

  ## extract integrals
  #outfile2 = ".masters"
  #commandlist2 = ["./extract-integrals.py", outfile1]
  #with open(outfile2, "w") as fh:
  #  p2 = subprocess.Popen(commandlist2, stdout=fh)
  #  p2.wait()

  ## differentiate integrals
  #outfile3 = ".derivatives"
  #commandlist3 = ["./differentiate-integrals.py", outfile2]
  #with open(outfile3, "w") as fh:
  #  p3 = subprocess.Popen(commandlist3, stdout=fh)
  #  p3.wait()
  ##

  out, err = p2.communicate()
  masterstr = out.decode("utf-8")

  return masterstr.split()

#./substitute-prototypes.py $OUT > .output
#./extract-integrals.py .output > .masters
#./differentiate-integrals.py .masters > .derivatives
#./extract-integrals.py .derivatives > .integrals_diff


#-----------------------------------------------------------------------------
if __name__ == '__main__':

  masters_list = []
  for i in range(0, args.number_of_integrals):
    outfile = "out{0}".format(i)
    outstr = check_out_file(outfile)
    # --- collect master integrals --
    if args.masters:
      if outstr[0]:
        masters_list.extend(collect_masters(outfile))

    # --- print status of out files --
    else:
      print("{0:<6} {1}".format(outfile,outstr[1]))
        
  if args.masters:
    print("Masters list length: ", len(masters_list))
    print("Masters set length: ", len(set(masters_list)))

    with open("masters", "w") as fh:
      for master in set(masters_list):
        fh.write(str(master)+"\n")

