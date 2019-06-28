#!/bin/bash

./clean.sh

generate-admin-files.py startinglistNNLO.txt 1 1 1 1 -1 -1

sh generate-identities.sh

solve_integrals integrals out ep ap a c m2
