#
 
set terminal pngcairo enhanced size 7in, 10in 
set output 'soft-function-qq-im-beta.png'

set multiplot

set ylabel ""
set xlabel "{/Symbol b}"
#set format y "10^{%T}"

set style line 1 lt 1 lw 2 pt 13 ps 1.2 lc rgb "red" 
set style line 2 lt 1 lw 2 pt 13 ps 1.2 lc rgb "green" 
set style line 3 lt 1 lw 2 pt 13 ps 1.2 lc rgb "blue" 
set style line 4 lt 1 lw 2 pt 13 ps 1.2 lc rgb "violet" 

set grid
set xrange [0:1]
set xtics 0.1
set size 1.0, 0.7

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-- Plots
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
set origin 0.0,0.3
set key top left
set yrange [-100:150]
set title 'S_{12}'
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '<paste ../table1cut-im.dat'   u 1:2:5 w err ls 1 t '1/ep^2',\
  '<paste ../table1cut-im.dat'   u 1:3:6 w err ls 2 t '1/ep',\
  '<paste ../table1cut-im.dat'   u 1:4:7 w err ls 4 t '1',\
  ''   u 1:4 w l ls 4 t '',\
  '<paste ../table1cut-im.dat ../common/tablerge2ep0.dat'  \
       u 1:($4+$13):7 w err ls 3 t 'ren 1',\
  ''   u 1:($4+$13) w l ls 3 t ''

replot \
  '../common/tablerge.dat' u 1:(-$10) w l ls 1 t '',\
  '../common/tablerge.dat' u 1:(-$11) w l ls 2 t '',\

set size 1.0, 0.3
unset title
unset label 2


#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-- Ratios
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
set origin 0.0,0.0
set yrange [0.8:1.2]
plot   \
   1 lt -1 t '',\
  '<paste ../table1cut-im.dat ../common/tablerge2.dat'  \
  u 1:(-$2/$17):($5/$17) w err ls 1 t '',\
  '<paste ../table1cut-im.dat ../common/tablerge2.dat'  \
  u 1:(-$3/$18):($6/$18) w err ls 2 t ''

