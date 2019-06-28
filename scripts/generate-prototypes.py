#!/usr/bin/env python3

import string


#-----------------------------------------------------------------------------
def analyse_pmstr(pmstr):
  posprog = []
  negprog = []
  for i in range(0, len(pmstr)):
     propnum = i+1
     if pmstr[i] == '+': posprog.append(str(propnum))
     elif pmstr[i] == '-': negprog.append(str(propnum))

  posint = ", ".join(posprog)
  negint = ", ".join(negprog)

  formatstr = "5, 6"
  if len(posprog) > 0: formatstr = "{0}, "+formatstr
  if len(negprog) > 0: formatstr = formatstr+"; {1}"
  formatstr = "("+formatstr+")"

  return formatstr.format(posint, negint)

#-----------------------------------------------------------------------------
signs=['+','-']
indices =['a1','a2','a3','a4']
PRnum = 0

#print("n1, n2, n3, n4, n5, n6")
for i in signs:
  for j in signs:
    for k in signs:
      for l in signs:
          pmstr = "{0}{1}{2}{3}".format(i, j, k, l)
          print("PR{0:<2}".format(PRnum),analyse_pmstr(pmstr))
          PRnum += 1
          
