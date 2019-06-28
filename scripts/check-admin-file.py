#!/usr/bin/env python
#


import argparse
import re
import subprocess
import RegExUtil


parser =  argparse.ArgumentParser(
formatter_class=argparse.RawTextHelpFormatter,\
description="""

Take admin file and generate back the list of IBPs in Mathematica format such
that they can be compared with the original set.

Example:

  $ check-admin-file.py PR0identities.prc

"""
)
parser.add_argument("file", help="indentities.prc admin file")
args = parser.parse_args()

#-----------------------------------------------------------------------------
if __name__ == '__main__':

  # --- extract proto name
  proto_name = RegExUtil.regexstract(args.file, '(PR\d+)')[0]
  
  # --- extract ids
  all_ids = []
  with open(args.file) as fh:
    content = fh.read()
    all_ids = RegExUtil.regexstract(content,'l id\d+ =[^;]*;\n\n', re.MULTILINE)

  # --- extract ni -> ai substitutions
  with open("finalsubstitutions") as fh:
    content = fh.read()
    all_mapping = RegExUtil.regexstract(content, \
                  'id {0}\([^\)]*\) = I\(([^\)]*)\)'.format(proto_name))

    n_list = all_mapping[0].split(",")
    a_list =  ["a{0}".format(i+1) for i in range(0,len(n_list))]

  # -- create temporary FORM file content
  form_file_content  = "#-\n"
  form_file_content += "#include decls\n"
  form_file_content += "s {0};\n".format(" ".join(a_list))
  form_file_content += "\n"
  for ibp in all_ids:
    form_file_content += ibp
  form_file_content += "\n"
  form_file_content += "#include finalsubstitutions\n\n"

  form_file_content += "\n"
  for n, a in zip(n_list,a_list):
    form_file_content += "mul replace_({0},{1});\n".format(n,a)

  form_file_content += "id replace(?args) = replace_(?args);\n"
  form_file_content += "\n"
  form_file_content += "print;\n"
  form_file_content += ".end"

  # --- write and execute temporary FORM file
  form_fname = ".substitute.frm"
  with open(form_fname,"w") as fh:
    fh.write(form_file_content)
  commandlist=["form", form_fname]
  p = subprocess.Popen(commandlist, stdout=subprocess.PIPE)
  out, err = p.communicate()
  substitute_output = out.decode("utf-8")

  #print(substitute_output)

  # --- transform ids into Y/Ym operator format and extract ids into list
  final_content = substitute_output
  final_content = final_content.replace("(","[{")\
                               .replace(")","}]")\
                               .replace("I", "G")

  final_ids = RegExUtil.regexstract(final_content,'id\d+ =([^;]*);\n\n', re.MULTILINE)

  print("{{{0}}}".format(",".join(final_ids)))
