#
 
set terminal pngcairo enhanced size 21in, 21in 
set output 'soft-function-gg-gbub-beta.png'

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
set size 0.333333, 0.333333

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-- Plots
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
set origin 0, 0.65
set key bottom left
set title 'S_{11}'
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.05, 0.55 left 
plot   \
  '../tablebub11gg.dat'       u 1:2         ls 1 pt 6 t '1/ep^2 DE',\
  '../tablebub11validgg.dat'  u 1:2:5 w err ls 2 pt 1 t '1/ep^2 SD',\
  '../tablebub11gg.dat'       u 1:3         ls 1 pt 6 t '1/ep DE',\
  '../tablebub11validgg.dat'  u 1:3:6 w err ls 2 pt 1 t '1/ep SD',\
  '../tablebub11gg.dat'       u 1:4         ls 1 pt 6 t '1 DE',\
  '../tablebub11validgg.dat'  u 1:4:7 w err ls 2 pt 1 t '1 SD'

#-----------------------------------------------------------------------------
set origin 0.33, 0.65
set key top left
set title 'S_{12}'
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tablebub12gg.dat'       u 1:2         ls 1 pt 6 t '',\
  '../tablebub12validgg.dat'  u 1:2:5 w err ls 2 pt 1 t '',\
  '../tablebub12gg.dat'       u 1:3         ls 1 pt 6 t '',\
  '../tablebub12validgg.dat'  u 1:3:6 w err ls 2 pt 1 t '',\
  '../tablebub12gg.dat'       u 1:4         ls 1 pt 6 t '',\
  '../tablebub12validgg.dat'  u 1:4:7 w err ls 2 pt 1 t ''


#-----------------------------------------------------------------------------
set origin 0.66, 0.65
set key top left
set title 'S_{13}'

set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tablebub13gg.dat'       u 1:2         ls 1 pt 6 t '',\
  '../tablebub13validgg.dat'  u 1:2:5 w err ls 2 pt 1 t '',\
  '../tablebub13gg.dat'       u 1:3         ls 1 pt 6 t '',\
  '../tablebub13validgg.dat'  u 1:3:6 w err ls 2 pt 1 t '',\
  '../tablebub13gg.dat'       u 1:4         ls 1 pt 6 t '',\
  '../tablebub13validgg.dat'  u 1:4:7 w err ls 2 pt 1 t ''

#-----------------------------------------------------------------------------
set origin 0, 0.142857
set key bottom left
set title 'S_{22}'
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.05, 0.55 left 
plot   \
  '../tablebub22gg.dat'       u 1:2         ls 1 pt 6 t '1/ep^2 DE',\
  '../tablebub22validgg.dat'  u 1:2:5 w err ls 2 pt 1 t '1/ep^2 SD',\
  '../tablebub22gg.dat'       u 1:3         ls 1 pt 6 t '1/ep DE',\
  '../tablebub22validgg.dat'  u 1:3:6 w err ls 2 pt 1 t '1/ep SD',\
  '../tablebub22gg.dat'       u 1:4         ls 1 pt 6 t '1 DE',\
  '../tablebub22validgg.dat'  u 1:4:7 w err ls 2 pt 1 t '1 SD'

#-----------------------------------------------------------------------------
set origin 0.33, 0.142857
set key top left
set title 'S_{23}'
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tablebub23gg.dat'       u 1:2         ls 1 pt 6 t '',\
  '../tablebub23validgg.dat'  u 1:2:5 w err ls 2 pt 1 t '',\
  '../tablebub23gg.dat'       u 1:3         ls 1 pt 6 t '',\
  '../tablebub23validgg.dat'  u 1:3:6 w err ls 2 pt 1 t '',\
  '../tablebub23gg.dat'       u 1:4         ls 1 pt 6 t '',\
  '../tablebub23validgg.dat'  u 1:4:7 w err ls 2 pt 1 t ''


#-----------------------------------------------------------------------------
set origin 0.66, 0.142857
set key top left
set title 'S_{33}'

set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tablebub33gg.dat'       u 1:2         ls 1 pt 6 t '',\
  '../tablebub33validgg.dat'  u 1:2:5 w err ls 2 pt 1 t '',\
  '../tablebub33gg.dat'       u 1:3         ls 1 pt 6 t '',\
  '../tablebub33validgg.dat'  u 1:3:6 w err ls 2 pt 1 t '',\
  '../tablebub33gg.dat'       u 1:4         ls 1 pt 6 t '',\
  '../tablebub33validgg.dat'  u 1:4:7 w err ls 2 pt 1 t ''


#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-- Ratios
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
set size 0.333, 0.142857
unset title
unset label 2


#-----------------------------------------------------------------------------
set origin 0,.507
set yrange [0.9:1.1]
set label 3 "DE/SD" at graph 0.05, 0.9 left font "Helvetica,14"
plot   \
   1 lt -1 t '',\
  '<paste ../tablebub11gg.dat ../tablebub11validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tablebub11gg.dat ../tablebub11validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tablebub11gg.dat ../tablebub11validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.33,0.507
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tablebub12gg.dat ../tablebub12validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tablebub12gg.dat ../tablebub12validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tablebub12gg.dat ../tablebub12validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.66,0.507
#set yrange [*:*]
plot   \
   1 lt -1 t ''
#  '<paste ../tablebub13gg.dat ../tablebub13validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
#  '<paste ../tablebub13gg.dat ../tablebub13validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
#  '<paste ../tablebub13gg.dat ../tablebub13validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''

#-----------------------------------------------------------------------------
set origin 0,0.0
set yrange [0.9:1.1]
set label 3 "DE/SD" at graph 0.05, 0.9 left font "Helvetica,14"
plot   \
   1 lt -1 t '',\
  '<paste ../tablebub22gg.dat ../tablebub22validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tablebub22gg.dat ../tablebub22validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tablebub22gg.dat ../tablebub22validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.33,0.0
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tablebub23gg.dat ../tablebub23validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tablebub23gg.dat ../tablebub23validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tablebub23gg.dat ../tablebub23validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.66,0.0
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tablebub33gg.dat ../tablebub33validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tablebub33gg.dat ../tablebub33validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tablebub33gg.dat ../tablebub33validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''
