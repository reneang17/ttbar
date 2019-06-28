# You have to execute 
#   $ ./ run-nlo.sh 
# before running this file

generate-closed-set.py int3 -a
out-display.py .tmp_3_reduction_output1 mathematica  >  .tmp_test1
prototype-info.py .tmp_3_reduction_output1 -m  >  .tmp_test2

