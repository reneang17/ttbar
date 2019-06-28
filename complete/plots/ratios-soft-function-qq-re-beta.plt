#
 
set terminal pngcairo enhanced size 21in, 10in 
set output 'ratios-soft-function-qq-re-beta.png'

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
set key top left
#set yrange [-3000:1000]
set yrange [-300:1000]
#set yrange [-1:-0.6]
set title 'S_{11}'
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.05, 0.05 left 
plot   \
  '<paste ../tabletad11.dat ../tablebub11.dat ../table2cut11.dat ../oldtable1cut.dat'  \
  u 1:($2+$6+$24+$32):($25) w err ls 1 t '1/ep^2',\
  '<paste ../tabletad11.dat ../tablebub11.dat ../table2cut11.dat ../oldtable1cut.dat'  \
  u 1:($3+$7+$26+$33):($27) w err ls 2 t '1/ep',\
  '../tablealt.dat' u 1:2:3 w err ls 4 pt 6 t '1',\
  '' u 1:2 w l ls 4 t '',\
  '<paste ../tablealt.dat ../common/tablerge2ep0.dat' u 1:($2+$9):3 w err ls 3 pt 6 t 'ren 1',\
  '' u 1:($2+$9) w l ls 3 t ''
  #'<paste ../tabletad11.dat ../tablebub11.dat ../table2cut11.dat ../oldtable1cut.dat'  \
  #u 1:($4+$8+$28+$34):($29) w err ls 3 t '1',\

replot \
  '../common/tablerge.dat' u 1:(-$2) w l ls 1 t '',\
  '../common/tablerge.dat' u 1:(-$3) w l ls 2 t ''

#-----------------------------------------------------------------------------
set origin 0.33,0.3
set key top left
#set yrange [-200:200]
set yrange [-40:100]
set title 'S_{12}'
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.80, 0.9 left 
plot   \
  '<paste ../tabletad12.dat ../tablebub12.dat ../table2cut12.dat ../oldtable1cut.dat'  \
  u 1:($2+$6+$24+$36):($25) w err ls 1 t '1/ep^2',\
  '<paste ../tabletad12.dat ../tablebub12.dat ../table2cut12.dat ../oldtable1cut.dat'  \
  u 1:($3+$7+$26+$37):($27) w err ls 2 t '1/ep' ,\
  '../tablealt.dat' u 1:4:5 w err ls 4 pt 6 t '1',\
  '' u 1:4 w l ls 4 t '',\
  '<paste ../tablealt.dat ../common/tablerge2ep0.dat' u 1:($4+$10):5 w err ls 3 pt 6 t 'ren 1',\
  '' u 1:($4+$10) w l ls 3 t ''
  #'<paste ../tabletad12.dat ../tablebub12.dat ../table2cut12.dat ../oldtable1cut.dat'  \
  #u 1:($4+$8+$28+$38):($29) w err ls 3 t '1' ,\

replot \
  '../common/tablerge.dat' u 1:(-$4) w l ls 1 t '',\
  '../common/tablerge.dat' u 1:(-$5) w l ls 2 t '',\

#-----------------------------------------------------------------------------
set origin 0.66,0.3
set key top left
set yrange [-20:400]
set title 'S_{22}'
#set label 1 "Direct RG" at graph 0.17, 0.95 left 
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.80, 0.9 left 
plot   \
  '<paste ../tabletad22.dat ../tablebub22.dat ../table2cut22.dat ../oldtable1cut.dat'  \
  u 1:($2+$6+$24+$40):($25) w err ls 1 t '1/ep^2',\
  '<paste ../tabletad22.dat ../tablebub22.dat ../table2cut22.dat ../oldtable1cut.dat'  \
  u 1:($3+$7+$26+$41):($27) w err ls 2 t '1/ep',\
  '../tablealt.dat' u 1:6:7 w err ls 4 pt 6 t '1',\
  '' u 1:6 w l ls 4 t '',\
  '<paste ../tablealt.dat ../common/tablerge2ep0.dat' u 1:($6+$11):7 w err ls 3 pt 6 t 'ren 1',\
  '' u 1:($6+$11) w l ls 3 t ''
  #'<paste ../tabletad22.dat ../tablebub22.dat ../table2cut22.dat ../oldtable1cut.dat'  \
  #u 1:($4+$8+$28+$42):($29) w err ls 3 t '1',\

replot \
  '../common/tablerge.dat' u 1:(-$6) w l ls 1 t '',\
  '../common/tablerge.dat' u 1:(-$7) w l ls 2 t ''

set size 0.333, 0.3
unset title
unset label 2


#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-- Ratios
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
set origin 0,0.0
set yrange [0.8:1.2]
#set yrange [*:*]
#set ytics 0.4
set label 3 "direct/RG" at graph 0.05, 0.9 left font "Helvetica,14"
plot   \
   1 lt -1 t '',\
  '<paste ../tabletad11.dat ../tablebub11.dat ../table2cut11.dat ../oldtable1cut.dat ../common/oldtablerge2.dat'  \
  u 1:(-($2+$6+$24+$32)/$56):($25/$56) w err ls 1 t '',\
  '<paste ../tabletad11.dat ../tablebub11.dat ../table2cut11.dat ../oldtable1cut.dat ../common/oldtablerge2.dat'  \
  u 1:(-($3+$7+$26+$33)/$57):($27/$57) w err ls 2 t ''


#-----------------------------------------------------------------------------
set origin 0.33,0.0
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tabletad12.dat ../tablebub12.dat ../table2cut12.dat ../oldtable1cut.dat ../common/oldtablerge2.dat'  \
  u 1:(-($2+$6+$24+$36)/$58):($25/$58) w err ls 1 t '',\
  '<paste ../tabletad12.dat ../tablebub12.dat ../table2cut12.dat ../oldtable1cut.dat ../common/oldtablerge2.dat'  \
  u 1:(-($3+$7+$26+$37)/$59):($27/$59) w err ls 2 t ''


#-----------------------------------------------------------------------------
set origin 0.66,0.0
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tabletad22.dat ../tablebub22.dat ../table2cut22.dat ../oldtable1cut.dat ../common/oldtablerge2.dat'  \
  u 1:(-($2+$6+$24+$40)/$60):($25/$60) w err ls 1 t '',\
  '<paste ../tabletad22.dat ../tablebub22.dat ../table2cut22.dat ../oldtable1cut.dat ../common/oldtablerge2.dat'  \
  u 1:(-($3+$7+$26+$41)/$61):($27/$61) w err ls 2 t ''

