#!/bin/bash

for i in `ls col* | sed 's/col/rescol/1'`
  do 
    if [ ! -f $i ]; then
      #echo $i
      #TMP=${i//res/int}
      #echo ${TMP//dat/dat}
      TMP=${i//res/slu}
      echo ${TMP//dat/batch}
    fi
done

#for i in `ls int* | sed 's/int/res/1'`
#  do 
#    if [ ! -f $i ]; then
#      #TMP=${i//res/int}
#      #echo ${TMP//dat/dat}
#      TMP=${i//res/slu}
#      echo ${TMP//dat/batch}
#    fi
#  done
