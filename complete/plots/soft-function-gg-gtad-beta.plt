#
 
set terminal pngcairo enhanced size 21in, 21in 
set output 'soft-function-gg-gtad-beta.png'

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
  '../tabletad11gg.dat'       u 1:2         ls 1 pt 6 t '1/ep^2 DE',\
  '../tabletad11validgg.dat'  u 1:2:5 w err ls 2 pt 1 t '1/ep^2 SD',\
  '../tabletad11gg.dat'       u 1:3         ls 1 pt 6 t '1/ep DE',\
  '../tabletad11validgg.dat'  u 1:3:6 w err ls 2 pt 1 t '1/ep SD',\
  '../tabletad11gg.dat'       u 1:4         ls 1 pt 6 t '1 DE',\
  '../tabletad11validgg.dat'  u 1:4:7 w err ls 2 pt 1 t '1 SD'

#-----------------------------------------------------------------------------
set origin 0.33, 0.65
set key top left
set title 'S_{12}'
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tabletad12gg.dat'       u 1:2         ls 1 pt 6 t '',\
  '../tabletad12validgg.dat'  u 1:2:5 w err ls 2 pt 1 t '',\
  '../tabletad12gg.dat'       u 1:3         ls 1 pt 6 t '',\
  '../tabletad12validgg.dat'  u 1:3:6 w err ls 2 pt 1 t '',\
  '../tabletad12gg.dat'       u 1:4         ls 1 pt 6 t '',\
  '../tabletad12validgg.dat'  u 1:4:7 w err ls 2 pt 1 t ''


#-----------------------------------------------------------------------------
set origin 0.66, 0.65
set key top left
set title 'S_{13}'

set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tabletad13gg.dat'       u 1:2         ls 1 pt 6 t '',\
  '../tabletad13validgg.dat'  u 1:2:5 w err ls 2 pt 1 t '',\
  '../tabletad13gg.dat'       u 1:3         ls 1 pt 6 t '',\
  '../tabletad13validgg.dat'  u 1:3:6 w err ls 2 pt 1 t '',\
  '../tabletad13gg.dat'       u 1:4         ls 1 pt 6 t '',\
  '../tabletad13validgg.dat'  u 1:4:7 w err ls 2 pt 1 t ''

#-----------------------------------------------------------------------------
set origin 0, 0.142857
set key bottom left
set title 'S_{22}'
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.05, 0.55 left 
plot   \
  '../tabletad22gg.dat'       u 1:2         ls 1 pt 6 t '1/ep^2 DE',\
  '../tabletad22validgg.dat'  u 1:2:5 w err ls 2 pt 1 t '1/ep^2 SD',\
  '../tabletad22gg.dat'       u 1:3         ls 1 pt 6 t '1/ep DE',\
  '../tabletad22validgg.dat'  u 1:3:6 w err ls 2 pt 1 t '1/ep SD',\
  '../tabletad22gg.dat'       u 1:4         ls 1 pt 6 t '1 DE',\
  '../tabletad22validgg.dat'  u 1:4:7 w err ls 2 pt 1 t '1 SD'

#-----------------------------------------------------------------------------
set origin 0.33, 0.142857
set key top left
set title 'S_{23}'
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tabletad23gg.dat'       u 1:2         ls 1 pt 6 t '',\
  '../tabletad23validgg.dat'  u 1:2:5 w err ls 2 pt 1 t '',\
  '../tabletad23gg.dat'       u 1:3         ls 1 pt 6 t '',\
  '../tabletad23validgg.dat'  u 1:3:6 w err ls 2 pt 1 t '',\
  '../tabletad23gg.dat'       u 1:4         ls 1 pt 6 t '',\
  '../tabletad23validgg.dat'  u 1:4:7 w err ls 2 pt 1 t ''


#-----------------------------------------------------------------------------
set origin 0.66, 0.142857
set key top left
set title 'S_{33}'

set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tabletad33gg.dat'       u 1:2         ls 1 pt 6 t '',\
  '../tabletad33validgg.dat'  u 1:2:5 w err ls 2 pt 1 t '',\
  '../tabletad33gg.dat'       u 1:3         ls 1 pt 6 t '',\
  '../tabletad33validgg.dat'  u 1:3:6 w err ls 2 pt 1 t '',\
  '../tabletad33gg.dat'       u 1:4         ls 1 pt 6 t '',\
  '../tabletad33validgg.dat'  u 1:4:7 w err ls 2 pt 1 t ''


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
  '<paste ../tabletad11gg.dat ../tabletad11validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tabletad11gg.dat ../tabletad11validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tabletad11gg.dat ../tabletad11validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.33,0.507
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tabletad12gg.dat ../tabletad12validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tabletad12gg.dat ../tabletad12validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tabletad12gg.dat ../tabletad12validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.66,0.507
#set yrange [*:*]
plot   \
   1 lt -1 t ''
#  '<paste ../tabletad13gg.dat ../tabletad13validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
#  '<paste ../tabletad13gg.dat ../tabletad13validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
#  '<paste ../tabletad13gg.dat ../tabletad13validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''

#-----------------------------------------------------------------------------
set origin 0,0.0
set yrange [0.9:1.1]
set label 3 "DE/SD" at graph 0.05, 0.9 left font "Helvetica,14"
plot   \
   1 lt -1 t '',\
  '<paste ../tabletad22gg.dat ../tabletad22validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tabletad22gg.dat ../tabletad22validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tabletad22gg.dat ../tabletad22validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.33,0.0
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tabletad23gg.dat ../tabletad23validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tabletad23gg.dat ../tabletad23validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tabletad23gg.dat ../tabletad23validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.66,0.0
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tabletad33gg.dat ../tabletad33validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tabletad33gg.dat ../tabletad33validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tabletad33gg.dat ../tabletad33validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''
