#!/bin/bash

./clean.sh

generate-admin-files.py ../startinglistNLO.txt 1 1 1 1 -1 -1
#./generate-admin-files.py ../../startinglistNLO.txt 1 1 1 1 -1 -1 -d 4

sh generate-identities.sh

solve_integrals integrals out ep ap a c qT2

#form final-result.frm
