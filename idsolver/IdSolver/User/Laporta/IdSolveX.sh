#!/bin/sh

usage="usage: $(basename $0) protolist protonumber order

       Create the system of identities for prototype nr. protonumber in the
       protolist file. The format of the latter is as in solve_prototypes,
       but the prototypes should have the last line with mass X. The integrals
       generating the recurrence relations can be found in the Integrals file.
       After creating the system, the recurrence relations are solved and can
       be found in the Difference file."

if [ $# == 0 ]; then
  echo "$usage"
  exit 0
fi

IdSolveX $1 $2 $3
solve_integrals Integrals Difference ep x
