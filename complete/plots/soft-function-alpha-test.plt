#
 
set terminal pngcairo enhanced size 14in, 7in 
set output 'soft-function-alpha-test.png'

set multiplot

set ylabel ""
set xlabel "{/Symbol b}"
#set format y "10^{%T}"

set style line 1 lt 1 lw 2 pt 13 ps 1.2 lc rgb "red" 
set style line 2 lt 1 lw 2 pt 13 ps 1.2 lc rgb "green" 
set style line 3 lt 1 lw 2 pt 13 ps 1.2 lc rgb "blue" 
set style line 4 lt 1 lw 2 pt 13 ps 1.2 lc rgb "violet" 

set xrange [0:1]
#set yrange [-0.02:0.02]

#set logscale y

set size 0.33, 0.5
set grid y
#-----------------------------------------------------------------------------
set origin 0.0,0.5
set key top outside
#set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
set title '1/(ap^2 ep)'
plot   \
  '../table2cut11.dat' u 1:2:3 w err ls 1 t '',\
  '../table2cut12.dat' u 1:2:3 w err ls 2 t '',\
  '../table2cut22.dat' u 1:2:3 w err ls 3 t ''

set origin 0.33,0.5
set title '1/ap^2'
plot   \
  '../table2cut11.dat' u 1:4:5 w err ls 1 t '',\
  '../table2cut12.dat' u 1:4:5 w err ls 2 t '',\
  '../table2cut22.dat' u 1:4:5 w err ls 3 t ''

set origin 0.66,0.5
set title '1/(ap ep)'
plot   \
  '../table2cut11.dat' u 1:6:7 w err ls 1 t '',\
  '../table2cut12.dat' u 1:6:7 w err ls 2 t '',\
  '../table2cut22.dat' u 1:6:7 w err ls 3 t ''

set origin 0,0
set title '1/ap'
plot   \
  '../table2cut11.dat' u 1:8:(abs($9)) w err ls 1 t '',\
  '../table2cut12.dat' u 1:8:(abs($9)) w err ls 2 t '',\
  '../table2cut22.dat' u 1:8:(abs($9)) w err ls 3 t ''

set origin 0.33,0
set title 'ep/ap^2'
plot   \
  '../table2cut11.dat' u 1:10:11 w err ls 1 t '',\
  '../table2cut12.dat' u 1:10:11 w err ls 2 t '',\
  '../table2cut22.dat' u 1:10:11 w err ls 3 t ''

set origin 0.66,0
set title 'ep/ap'
plot   \
  '../table2cut11.dat' u 1:12:13 w err ls 1 t '',\
  '../table2cut12.dat' u 1:12:13 w err ls 2 t '',\
  '../table2cut22.dat' u 1:12:13 w err ls 3 t ''

#  '../table2cut.dat' u 1:14:15 w err ls 8 t '1/ep^3'

