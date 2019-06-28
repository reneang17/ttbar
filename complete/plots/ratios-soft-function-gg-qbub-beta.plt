#
 
set terminal pngcairo enhanced size 21in, 21in 
set output 'soft-function-gg-qbub-beta.png'

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
set size 0.333333, 0.333333

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-- Plots
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
set origin 0, 0.65
set key top left Left reverse spacing 1.4
set title 'S_{11}'
set yrange [-2:45]
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.05, 0.35 left 
plot   \
  '../tableqbub11gg.dat'       u 1:2 ls 1 pt 7 ps 1.5 t '1/{/Symbol e}^2 DE',\
  '../tableqbub11validgg.dat'  u 1:2:5 w err ls 3 pt 1 t '1/{/Symbol e}^2 SD',\
  '../tableqbub11gg.dat'       u 1:3 ls 1 pt 7 ps 1.5 t '1/{/Symbol e} DE',\
  '../tableqbub11validgg.dat'  u 1:3:6 w err ls 3 pt 1 t '1/{/Symbol e} SD',\
  '../tableqbub11gg.dat'       u 1:4 ls 1 pt 7 ps 1.5 t '{/Symbol e}^0 DE',\
  '../tableqbub11validgg.dat'  u 1:4:7 w err ls 3 pt 1 t '{/Symbol e}^0 SD'

replot \
  '../common/tablergegg.dat' u 1:(-$26) w l ls 1 t '1/{/Symbol e}^2 RGE',\
  '../common/tablergegg.dat' u 1:(-$27) w l ls 2 t '1/{/Symbol e} RGE'
#-----------------------------------------------------------------------------
set origin 0.33, 0.65
set key bottom left
set yrange [-30:0]
set title 'S_{12}'
unset label 2
#set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tableqbub12gg.dat'       u 1:2         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub12validgg.dat'  u 1:2:5 w err ls 3 pt 1 t '',\
  '../tableqbub12gg.dat'       u 1:3         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub12validgg.dat'  u 1:3:6 w err ls 3 pt 1 t '',\
  '../tableqbub12gg.dat'       u 1:4         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub12validgg.dat'  u 1:4:7 w err ls 3 pt 1 t ''

replot \
  '../common/tablergegg.dat' u 1:(-$28) w l ls 1 t '',\
  '../common/tablergegg.dat' u 1:(-$29) w l ls 2 t ''


#-----------------------------------------------------------------------------
set origin 0.66, 0.65
set key top left
set yrange [*:*]
set title 'S_{13}'
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
plot   \
  '../tableqbub13gg.dat'       u 1:2         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub13validgg.dat'  u 1:2:5 w err ls 3 pt 1 t '',\
  '../tableqbub13gg.dat'       u 1:3         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub13validgg.dat'  u 1:3:6 w err ls 3 pt 1 t '',\
  '../tableqbub13gg.dat'       u 1:4         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub13validgg.dat'  u 1:4:7 w err ls 3 pt 1 t ''

#plot \
#  '../common/tablergegg.dat' u 1:(-$30) w l ls 1 t '',\
#  '../common/tablergegg.dat' u 1:(-$31) w l ls 2 t ''

#-----------------------------------------------------------------------------
set origin 0, 0.142857
set key bottom left
set yrange [-16:3]
set title 'S_{22}'
#set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.05, 0.55 left 
plot   \
  '../tableqbub22gg.dat'       u 1:2         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub22validgg.dat'  u 1:2:5 w err ls 3 pt 1 t '',\
  '../tableqbub22gg.dat'       u 1:3         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub22validgg.dat'  u 1:3:6 w err ls 3 pt 1 t '',\
  '../tableqbub22gg.dat'       u 1:4         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub22validgg.dat'  u 1:4:7 w err ls 3 pt 1 t ''

replot \
  '../common/tablergegg.dat' u 1:(-$32) w l ls 1 t '',\
  '../common/tablergegg.dat' u 1:(-$33) w l ls 2 t ''

#-----------------------------------------------------------------------------
set origin 0.33, 0.142857
set key top left
set title 'S_{23}'
set yrange [-13:1]
plot   \
  '../tableqbub23gg.dat'       u 1:2         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub23validgg.dat'  u 1:2:5 w err ls 3 pt 1 t '',\
  '../tableqbub23gg.dat'       u 1:3         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub23validgg.dat'  u 1:3:6 w err ls 3 pt 1 t '',\
  '../tableqbub23gg.dat'       u 1:4         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub23validgg.dat'  u 1:4:7 w err ls 3 pt 1 t ''

replot \
  '../common/tablergegg.dat' u 1:(-$34) w l ls 1 t '',\
  '../common/tablergegg.dat' u 1:(-$35) w l ls 2 t ''

#-----------------------------------------------------------------------------
set origin 0.66, 0.142857
set key top left
set title 'S_{33}'
set yrange [-10:3]

plot   \
  '../tableqbub33gg.dat'       u 1:2         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub33validgg.dat'  u 1:2:5 w err ls 3 pt 1 t '',\
  '../tableqbub33gg.dat'       u 1:3         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub33validgg.dat'  u 1:3:6 w err ls 3 pt 1 t '',\
  '../tableqbub33gg.dat'       u 1:4         ls 1 pt 7 ps 1.5 t '',\
  '../tableqbub33validgg.dat'  u 1:4:7 w err ls 3 pt 1 t ''

replot \
  '../common/tablergegg.dat' u 1:(-$36) w l ls 1 t '',\
  '../common/tablergegg.dat' u 1:(-$37) w l ls 2 t ''


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
  '<paste ../tableqbub11gg.dat ../tableqbub11validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tableqbub11gg.dat ../tableqbub11validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tableqbub11gg.dat ../tableqbub11validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.33,0.507
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tableqbub12gg.dat ../tableqbub12validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tableqbub12gg.dat ../tableqbub12validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tableqbub12gg.dat ../tableqbub12validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.66,0.507
#set yrange [*:*]
plot   \
   1 lt -1 t ''
#  '<paste ../tableqbub13gg.dat ../tableqbub13validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
#  '<paste ../tableqbub13gg.dat ../tableqbub13validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
#  '<paste ../tableqbub13gg.dat ../tableqbub13validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''

#-----------------------------------------------------------------------------
set origin 0,0.0
#set yrange [0.9:1.1]
set label 3 "DE/SD" at graph 0.05, 0.9 left font "Helvetica,14"
plot   \
   1 lt -1 t '',\
  '<paste ../tableqbub22gg.dat ../tableqbub22validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tableqbub22gg.dat ../tableqbub22validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tableqbub22gg.dat ../tableqbub22validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.33,0.0
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tableqbub23gg.dat ../tableqbub23validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tableqbub23gg.dat ../tableqbub23validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tableqbub23gg.dat ../tableqbub23validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''


#-----------------------------------------------------------------------------
set origin 0.66,0.0
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tableqbub33gg.dat ../tableqbub33validgg.dat ' u 1:($2/$6):($9/$2)  w err ls 1 t '',\
  '<paste ../tableqbub33gg.dat ../tableqbub33validgg.dat ' u 1:($3/$7):($10/$3) w err ls 2 t '',\
  '<paste ../tableqbub33gg.dat ../tableqbub33validgg.dat ' u 1:($4/$8):($11/$4) w err ls 3 t ''
