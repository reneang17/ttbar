# You have to execute 
#   $ ./run.sh
# before running this file


#generate-closed-set.py int6 -a
#generate-closed-set.py int7 -a


# Mathematica replacements corresponding to reduction output
out-display.py out math >  .tmp_redout
#out-display.py .tmp_7_reduction_output1 math >  .tmp_redout2

# Mathematica replacement of original integrals to prototype notation
#integrals-to-prototypes.py integrals_orig  -m > .tmp_orig2proto
prototype-info.py --math integrals > .tmp_orig2proto
#integrals-to-prototypes.py integrals_orig  -m > .tmp_orig2proto

# Mathematica replacements of masters that appear in reduction output to
# in the form of prototype to notation integral notation
#prototype-info.py .tmp_6_reduction_output1 -m -R > .tmp_mastersproto2G

prototype-info.py out -m -R  > .tmp_proto2G
#prototype-info.py .tmp_7_reduction_output1 -m -R  >> .tmp_proto2G

