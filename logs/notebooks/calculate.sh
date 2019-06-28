#!/bin/bash

COMMAND='math -run -noprompt'

LIST=\
"
CalculateAndSaveEij.m 
CalculateIij2.m 
CalculateSoftFunction.m
CalculateHSiinm.m 
CalculateSoftFunction.m
CalculatePartonicCrossSectionsLimited.m 
GenerateCppCodeHS.m 
GenerateCppCodeLimited.m
"



for file in $LIST; do
  ls $file
  time $COMMAND <$file
done



