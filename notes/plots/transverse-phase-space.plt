#

set terminal pngcairo enhanced dashed size 10in, 4in

set output 'transverse-phase-space.png'

set multiplot

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

set xlabel "k_T"
set ylabel "l_T"

set label "{/Symbol \245}" at graph 0.91,0.91

set arrow from 0,1 to 3,4 nohead lt 1 lw 2
set arrow from 1,0 to 4,3 nohead lt 1 lw 2
set arrow from 0,1 to 1,0 nohead lt 3 lw 2
set arrow from 3,4 to 4,3 nohead lt 2 lw 2

plot -1 t ''


#------------------------------------
set size 0.5, 1.0
set origin 0.5, 0.0
unset arrow
unset label
set xlabel ""
set ylabel ""

set xrange [-2.5:2.5]
set yrange [-0.5:2.5]

set label "x_T" at graph 0.3,1
set label "y_T" at graph 1,0.3


set arrow from -1,0 to -1,1 nohead lt 1 lw 2
set arrow from 1,0 to 1,1 nohead   lt 1 lw 2
set arrow from -1,0 to 1,0 nohead  lt 3 lw 2
set arrow from -1,1 to 1,1 nohead  lt 2 lw 2

set arrow from screen 0.47,0.5 to screen 0.53,0.5 lw 2 size 60,0.3

plot -1 t ''

