#
 
set terminal pngcairo enhanced size 21in, 10in 
set output 'soft-function-qq-gbub-beta.png'

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
set size 0.333333, 0.7

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-- Plots
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
set origin 0,0.3
set key bottom left
set title 'S_{11}'
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.05, 0.55 left 
plot   \
  '../tablebub11.dat'       u 1:2         ls 1 pt 6 t '1/ep^2 DE',\
  '../tablebub11valid.dat'  u 1:2:5 w err ls 2 pt 1 t '1/ep^2 SD',\
  '../tablebub11.dat'       u 1:3         ls 1 pt 6 t '1/ep DE',\
  '../tablebub11valid.dat'  u 1:3:6 w err ls 2 pt 1 t '1/ep SD',\
  '../tablebub11.dat'       u 1:4         ls 1 pt 6 t '1 DE',\
  '../tablebub11valid.dat'  u 1:4:7 w err ls 2 pt 1 t '1 SD'

#-----------------------------------------------------------------------------
set origin 0.33,0.3
set key top left
set title 'S_{12}'
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tablebub12.dat'       u 1:2         ls 1 pt 6 t '',\
  '../tablebub12valid.dat'  u 1:2:5 w err ls 2 pt 1 t '',\
  '../tablebub12.dat'       u 1:3         ls 1 pt 6 t '',\
  '../tablebub12valid.dat'  u 1:3:6 w err ls 2 pt 1 t '',\
  '../tablebub12.dat'       u 1:4         ls 1 pt 6 t '',\
  '../tablebub12valid.dat'  u 1:4:7 w err ls 2 pt 1 t ''


#-----------------------------------------------------------------------------
set origin 0.66,0.3
set key top left
set title 'S_{22}'

set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tablebub22.dat'       u 1:2         ls 1 pt 6 t '',\
  '../tablebub22valid.dat'  u 1:2:5 w err ls 2 pt 1 t '',\
  '../tablebub22.dat'       u 1:3         ls 1 pt 6 t '',\
  '../tablebub22valid.dat'  u 1:3:6 w err ls 2 pt 1 t '',\
  '../tablebub22.dat'       u 1:4         ls 1 pt 6 t '',\
  '../tablebub22valid.dat'  u 1:4:7 w err ls 2 pt 1 t ''


#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-- Ratios
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
set size 0.333, 0.3
unset title
unset label 2

set origin 0,0.0
set yrange [0.9:1.1]
set label 3 "DE/SD" at graph 0.05, 0.9 left font "Helvetica,14"
plot   \
   1 lt -1 t '',\
  '<paste ../tablebub11.dat ../tablebub11valid.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tablebub11.dat ../tablebub11valid.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tablebub11.dat ../tablebub11valid.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.33,0.0
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tablebub12.dat ../tablebub12valid.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tablebub12.dat ../tablebub12valid.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tablebub12.dat ../tablebub12valid.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.66,0.0
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tablebub22.dat ../tablebub22valid.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tablebub22.dat ../tablebub22valid.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tablebub22.dat ../tablebub22valid.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''

