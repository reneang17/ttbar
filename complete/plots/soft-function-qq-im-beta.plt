#
 
set terminal pngcairo enhanced dashed size 7in, 7.5in 
set output 'soft-function-qq-im-beta.png'

set multiplot

set ylabel ""
set xlabel "{/Symbol b}_t" font "Helvetica, 16"
#set format y "10^{%T}"

set style line 1 lt 1 lw 2 pt 13 ps 1.2 lc rgb "red" 
set style line 2 lt 1 lw 2 pt 13 ps 1.2 lc rgb "green" 
set style line 3 lt 1 lw 2 pt 13 ps 1.2 lc rgb "blue" 
set style line 4 lt 1 lw 2 pt 13 ps 1.2 lc rgb "violet" 
set style line 5 lt 2 lw 2 pt 13 ps 1.2 lc rgb "red" 

set xrange [0:1]
set xtics 0.1
set size 1.0, 1.0

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-- Plots
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
set origin 0.0,0.0
set key top left Left reverse spacing 1.4
set yrange [-100:170]
set title 'S_{12}' font "Helvetica, 16"
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left  font "Helvetica, 16"
plot   \
  '<paste ../table1cut-im.dat'   u 1:2:5 w err ls 1 t '1/{/Symbol e}^2',\
  '<paste ../table1cut-im.dat'   u 1:3:6 w err ls 2 t '1/{/Symbol e}',\
  '<paste ../table1cut-im.dat'   u 1:4:7 w err ls 4 t '{/Symbol e}^0 bare',\
  ''   u 1:4 w l ls 4 t '',\
  '<paste ../table1cut-im.dat ../common/tablerge2ep0.dat'  \
       u 1:($4+$13):7 w err ls 3 t '',\
  ''   u 1:($4+$13) w l ls 3 t '{/Symbol e}^0 renormalized'

replot \
  '../common/tablerge.dat' u 1:(-$10) w l ls 5 t '1/{/Symbol e}^2 RGE',\
  '../common/tablerge.dat' u 1:(-$11) w l ls 2 t '1/{/Symbol e} RGE',\

set size 1.0, 0.3
unset title
unset label 2

