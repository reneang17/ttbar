#-----------------------------------------------------------------------------
#
# NOTE: All factors except nf are included in these results.
#
#-----------------------------------------------------------------------------
 
set terminal pngcairo dashed enhanced size 21in, 7.5in 
set output 'soft-function-qq-qbub-beta.png'

set multiplot

set ylabel ""
set xlabel "{/Symbol b}_t" font "Helvetica, 16"
#set format y "10^{%T}"

set style line 1 lt 1 lw 2 pt 13 ps 1.2 lc rgb "red" 
set style line 2 lt 1 lw 2 pt 13 ps 1.2 lc rgb "green" 
set style line 3 lt 1 lw 2 pt 13 ps 1.2 lc rgb "blue" 
set style line 4 lt 1 lw 2 pt 13 ps 1.2 lc rgb "violet" 
set style line 5 lt 2 lw 2 pt 13 ps 1.2 lc rgb "red" 

#set grid
set xrange [0:1]
set xtics 0.1
set size 0.333333, 1.0

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-- Plots
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
se yrange[-2:25]
set origin 0,0.0
set key top left Left reverse spacing 1.4
set title 'S_{11}' font "Helvetica, 16"
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.07, 0.35 left  font "Helvetica, 16"

plot   \
  '../tableqbub11.dat'       u 1:2         ls 1 pt 6 ps 1.5 \
                             t '1/{/Symbol e}^2 DE',\
  '../tableqbub11valid.dat'  u 1:2:5 w err ls 3 pt 1 t '1/{/Symbol e}^2 SD',\
  '../tableqbub11.dat'       u 1:3         ls 1 pt 6 ps 1.5 \
                             t '1/{/Symbol e} DE',\
  '../tableqbub11valid.dat'  u 1:3:6 w err ls 3 pt 1 t '1/{/Symbol e} SD',\
  '../tableqbub11.dat'       u 1:4         ls 1 pt 6  ps 1.5 t '{/Symbol e}^0 DE',\
  '../tableqbub11valid.dat'  u 1:4:7 w err ls 3 pt 1 t '{/Symbol e}^0 SD'

replot \
  '../common/tablerge.dat' u 1:(-$14) w l ls 5 t '1/{/Symbol e}^2 RGE',\
  '../common/tablerge.dat' u 1:(-$15) w l ls 2 t '1/{/Symbol e} RGE',\

#-----------------------------------------------------------------------------
set origin 0.33,0.0
set key top left
se yrange[-17:2]
set title 'S_{12}'
unset label 2
#set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tableqbub12.dat'       u 1:2         ls 1 pt 6 ps 1.5 t '',\
  '../tableqbub12valid.dat'  u 1:2:5 w err ls 3 pt 1 t '',\
  '../tableqbub12.dat'       u 1:3         ls 1 pt 6 ps 1.5 t '',\
  '../tableqbub12valid.dat'  u 1:3:6 w err ls 3 pt 1 t '',\
  '../tableqbub12.dat'       u 1:4         ls 1 pt 6 ps 1.5 t '',\
  '../tableqbub12valid.dat'  u 1:4:7 w err ls 3 pt 1 t ''

replot \
  '../common/tablerge.dat' u 1:(-$16) w l ls 5 t '',\
  '../common/tablerge.dat' u 1:(-$17) w l ls 2 t '',\


#-----------------------------------------------------------------------------
set origin 0.66,0.0
set key top left
set yrange[-9:2]
set title 'S_{22}'

#set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tableqbub22.dat'       u 1:2         ls 1 pt 6 ps 1.5 t '',\
  '../tableqbub22valid.dat'  u 1:2:5 w err ls 3 pt 1 t '',\
  '../tableqbub22.dat'       u 1:3         ls 1 pt 6 ps 1.5 t '',\
  '../tableqbub22valid.dat'  u 1:3:6 w err ls 3 pt 1 t '',\
  '../tableqbub22.dat'       u 1:4         ls 1 pt 6 ps 1.5 t '',\
  '../tableqbub22valid.dat'  u 1:4:7 w err ls 3 pt 1 t ''

replot \
  '../common/tablerge.dat' u 1:(-$18) w l ls 5 t '',\
  '../common/tablerge.dat' u 1:(-$19) w l ls 2 t '',\


