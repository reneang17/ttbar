#
 
set terminal pngcairo enhanced dashed size 21in, 7.5in 
set output 'soft-function-qq-re-beta.png'

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
set size 0.333333, 1

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-- Plots
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
set origin 0,0.0
set key top left Left reverse spacing 1.4
#set yrange [-3000:1000]
set yrange [-300:1000]
#set yrange [-1:-0.6]
set title 'S_{11}' font "Helvetica, 16"
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.05, 0.08 left  font "Helvetica, 16"
plot   \
  '<paste ../tabletad11.dat ../tablebub11.dat ../table2cut11.dat ../oldtable1cut.dat'  \
  u 1:($2+$6+$24+$32):($25) w err ls 1 t '1/{/Symbol e}^2',\
  '<paste ../tabletad11.dat ../tablebub11.dat ../table2cut11.dat ../oldtable1cut.dat'  \
  u 1:($3+$7+$26+$33):($27) w err ls 2 t '1/{/Symbol e}',\
  '../tablealt.dat' u 1:2:3 w err ls 4 pt 6 t '{/Symbol e}^0 bare',\
  '' u 1:2 w l ls 4 t '',\
  '<paste ../tablealt.dat ../common/tablerge2ep0.dat' u 1:($2+$9):3 w err ls 3 pt 6 t '{/Symbol e}^0 renormalized',\
  '' u 1:($2+$9) w l ls 3 t ''
  #'<paste ../tabletad11.dat ../tablebub11.dat ../table2cut11.dat ../oldtable1cut.dat'  \
  #u 1:($4+$8+$28+$34):($29) w err ls 3 t '1',\

replot \
  '../common/tablerge.dat' u 1:(-$2) w l ls 5 t '1/{/Symbol e}^2 RGE',\
  '../common/tablerge.dat' u 1:(-$3) w l ls 2 t '1/{/Symbol e} RGE'

#-----------------------------------------------------------------------------
set origin 0.33,0.0
set key top left
#set yrange [-200:200]
set yrange [-40:100]
set title 'S_{12}' font "Helvetica, 16"
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.9 left 
plot   \
  '<paste ../tabletad12.dat ../tablebub12.dat ../table2cut12.dat ../oldtable1cut.dat'  \
  u 1:($2+$6+$24+$36):($25) w err ls 1 t '',\
  '<paste ../tabletad12.dat ../tablebub12.dat ../table2cut12.dat ../oldtable1cut.dat'  \
  u 1:($3+$7+$26+$37):($27) w err ls 2 t '' ,\
  '../tablealt.dat' u 1:4:5 w err ls 4 pt 6 t '',\
  '' u 1:4 w l ls 4 t '',\
  '<paste ../tablealt.dat ../common/tablerge2ep0.dat' u 1:($4+$10):5 w err ls 3 pt 6 t '',\
  '' u 1:($4+$10) w l ls 3 t ''
  #'<paste ../tabletad12.dat ../tablebub12.dat ../table2cut12.dat ../oldtable1cut.dat'  \
  #u 1:($4+$8+$28+$38):($29) w err ls 3 t '1' ,\

replot \
  '../common/tablerge.dat' u 1:(-$4) w l ls 5 t '',\
  '../common/tablerge.dat' u 1:(-$5) w l ls 2 t '',\

#-----------------------------------------------------------------------------
set origin 0.66,0.0
set key top left
set yrange [-20:400]
set title 'S_{22}' font "Helvetica, 16"
#set label 1 "Direct RG" at graph 0.17, 0.95 left 
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.9 left 
plot   \
  '<paste ../tabletad22.dat ../tablebub22.dat ../table2cut22.dat ../oldtable1cut.dat'  \
  u 1:($2+$6+$24+$40):($25) w err ls 1 t '',\
  '<paste ../tabletad22.dat ../tablebub22.dat ../table2cut22.dat ../oldtable1cut.dat'  \
  u 1:($3+$7+$26+$41):($27) w err ls 2 t '',\
  '../tablealt.dat' u 1:6:7 w err ls 4 pt 6 t '',\
  '' u 1:6 w l ls 4 t '',\
  '<paste ../tablealt.dat ../common/tablerge2ep0.dat' u 1:($6+$11):7 w err ls 3 pt 6 t '',\
  '' u 1:($6+$11) w l ls 3 t ''
  #'<paste ../tabletad22.dat ../tablebub22.dat ../table2cut22.dat ../oldtable1cut.dat'  \
  #u 1:($4+$8+$28+$42):($29) w err ls 3 t '1',\

replot \
  '../common/tablerge.dat' u 1:(-$6) w l ls 5 t '',\
  '../common/tablerge.dat' u 1:(-$7) w l ls 2 t ''

set size 0.333, 0.3
unset title
unset label 2


