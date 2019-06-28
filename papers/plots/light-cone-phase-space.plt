#

set terminal pngcairo enhanced dashed size 12in, 4.8in

set output 'light-cone-phase-space.png'

set multiplot

set style fill  pattern 2 border

set size square

#------------------------------------
set size 0.5, 1.0
set origin 0.0, 0.0

set zeroaxis lt -1
set xtics axis 1
set ytics axis 1

set border 0

set xrange [-0.5:4]
set yrange [-0.5:4]

set xlabel "k_-"
set ylabel "k_+"

set label "k_+ k_- = k_T^2" at graph 0.5, 0.3 left

plot 1/x t ''


#------------------------------------
set size 0.5, 1.0
set origin 0.5, 0.0
unset arrow
unset label
set xlabel ""
set ylabel ""

#set label "k_+" at graph 0.3,1
#set label "k_-" at graph 1,0.3

set zeroaxis lt -1
set xtics axis 1
set ytics axis 1

set border 0

set xrange [-0.5:4]
set yrange [-0.5:4]

set xlabel "k_-"
set ylabel "k_+"

set label "k_+ k_- > k_T^2" at graph 0.5, 0.65 left front

plot 1/x with filledcurves t ''


