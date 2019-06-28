#-----------------------------------------------------------------------------
#
# NOTE: All factors except nf are included in these results.
#
#-----------------------------------------------------------------------------
 
set terminal pngcairo enhanced size 21in, 10in 
set output 'soft-function-qq-qbub-beta.png'

set multiplot

set ylabel ""
set xlabel "{/Symbol b}_t"
#set format y "10^{%T}"

set style line 1 lt 1 lw 2 pt 13 ps 1.2 lc rgb "red" 
set style line 2 lt 1 lw 2 pt 13 ps 1.2 lc rgb "green" 
set style line 3 lt 1 lw 2 pt 13 ps 1.2 lc rgb "blue" 
set style line 4 lt 1 lw 2 pt 13 ps 1.2 lc rgb "violet" 

#set grid
set xrange [0:1]
set xtics 0.1
set size 0.333333, 0.7

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-- Plots
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
se yrange[-2:25]
set origin 0,0.3
set key top left Left reverse spacing 1.4
set title 'S_{11}'
#set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.05, 0.55 left 
plot   \
  '../tableqbub11.dat'       u 1:2         ls 1 pt 7 ps 1.5 \
                             t '1/{/Symbol e}^2 DE',\
  '../tableqbub11valid.dat'  u 1:2:5 w err ls 3 pt 1 t '1/{/Symbol e}^2 SD',\
  '../tableqbub11.dat'       u 1:3         ls 1 pt 7 ps 1.5 \
                             t '1/{/Symbol e} DE',\
  '../tableqbub11valid.dat'  u 1:3:6 w err ls 3 pt 1 t '1/{/Symbol e} SD',\
  '../tableqbub11.dat'       u 1:4         ls 1 pt 7  ps 1.5 t '{/Symbol e}^0 DE',\
  '../tableqbub11valid.dat'  u 1:4:7 w err ls 3 pt 1 t '{/Symbol e}^0 SD'

replot \
  '../common/tablerge.dat' u 1:(-$14) w l ls 1 t '1/{/Symbol e}^2 RGE',\
  '../common/tablerge.dat' u 1:(-$15) w l ls 2 t '1/{/Symbol e} RGE',\

#-----------------------------------------------------------------------------
set origin 0.33,0.3
set key top left
se yrange[-17:2]
set title 'S_{12}'
#set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tableqbub12.dat'       u 1:2         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub12valid.dat'  u 1:2:5 w err ls 3 pt 1 t '',\
  '../tableqbub12.dat'       u 1:3         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub12valid.dat'  u 1:3:6 w err ls 3 pt 1 t '',\
  '../tableqbub12.dat'       u 1:4         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub12valid.dat'  u 1:4:7 w err ls 3 pt 1 t ''

replot \
  '../common/tablerge.dat' u 1:(-$16) w l ls 1 t '',\
  '../common/tablerge.dat' u 1:(-$17) w l ls 2 t '',\


#-----------------------------------------------------------------------------
set origin 0.66,0.3
set key top left
set yrange[-9:2]
set title 'S_{22}'

#set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tableqbub22.dat'       u 1:2         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub22valid.dat'  u 1:2:5 w err ls 3 pt 1 t '',\
  '../tableqbub22.dat'       u 1:3         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub22valid.dat'  u 1:3:6 w err ls 3 pt 1 t '',\
  '../tableqbub22.dat'       u 1:4         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub22valid.dat'  u 1:4:7 w err ls 3 pt 1 t ''

replot \
  '../common/tablerge.dat' u 1:(-$18) w l ls 1 t '',\
  '../common/tablerge.dat' u 1:(-$19) w l ls 2 t '',\


#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-- Ratios
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
set size 0.333, 0.3
unset title
unset label 2

set origin 0,0.0
set yrange [0.5:1.5]
set yrange [0.9:1.1]
#set yrange [0.98:1.02]
set label 3 "DE/SD" at graph 0.95, 0.9 right font "Helvetica,14"
plot   \
   1 lt -1 t '',\
  '<paste ../tableqbub11.dat ../tableqbub11valid.dat' u 1:($2/$6):($9/$2) w err ls 1 t '',\
  '<paste ../tableqbub11.dat ../tableqbub11valid.dat' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tableqbub11.dat ../tableqbub11valid.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.33,0.0
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tableqbub12.dat ../tableqbub12valid.dat' u 1:($2/$6):($9/$2) w err ls 1 t '',\
  '<paste ../tableqbub12.dat ../tableqbub12valid.dat' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tableqbub12.dat ../tableqbub12valid.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.66,0.0
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tableqbub22.dat ../tableqbub22valid.dat' u 1:($2/$6):($9/$2) w err ls 1 t '',\
  '<paste ../tableqbub22.dat ../tableqbub22valid.dat' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tableqbub22.dat ../tableqbub22valid.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''

