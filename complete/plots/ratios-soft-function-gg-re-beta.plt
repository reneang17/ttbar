#
 
set terminal pngcairo enhanced size 21in, 21in 
set output 'soft-function-gg-re-beta.png'

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
set key top left spacing 1.2
set title 'S_{11}'
set yrange [-230:1100]
#set yrange [-230:130]
set label 2 "{/Symbol q} = {/Symbol p}/4" at graph 0.10, 0.50 left

plot   \
  '<paste ../tabletad11gg.dat ../tablebub11gg.dat ../table2cut11gg.dat ../oldtable1cutgg.dat'  \
  u 1:($2+$6+$24+$32):($25) w err ls 1 t '1/ep^2',\
  '<paste ../tabletad11gg.dat ../tablebub11gg.dat ../table2cut11gg.dat ../oldtable1cutgg.dat'  \
  u 1:($3+$7+$26+$33):($27) w err ls 2 t '1/ep',\
  '<paste ../tabletad11gg.dat ../tablebub11gg.dat ../table2cut11gg.dat ../oldtable1cutgg.dat'  \
  u 1:($4+$8+$28+$34):($29) w err ls 3 t '1',\
  '../tablealtgg.dat' u 1:2:3 w err ls 4 pt 6 t '1',\
  '' u 1:2 w l ls 4 t '',\
  '<paste ../tablealtgg.dat ../common/tablerge2ep0gg.dat' u 1:($2+$15):3 w err ls 3 pt 6 t 'ren 1',\
  '' u 1:($2+$15) w l ls 3 t ''


replot \
  '../common/tablergegg.dat' u 1:(-$2) w l ls 1 t '',\
  '../common/tablergegg.dat' u 1:(-$3) w l ls 2 t ''

#-----------------------------------------------------------------------------
set origin 0.33, 0.65
set key top left
set title 'S_{12}'
unset label 2 
set yrange [-100:130]

plot   \
  '<paste ../tabletad12gg.dat ../tablebub12gg.dat ../table2cut12gg.dat ../oldtable1cutgg.dat'  \
  u 1:($2+$6+$24+$36):($25) w err ls 1 t '',\
  '<paste ../tabletad12gg.dat ../tablebub12gg.dat ../table2cut12gg.dat ../oldtable1cutgg.dat'  \
  u 1:($3+$7+$26+$37):($27) w err ls 2 t '',\
  '<paste ../tabletad12gg.dat ../tablebub12gg.dat ../table2cut12gg.dat ../oldtable1cutgg.dat'  \
  u 1:($4+$8+$28+$38):($29) w err ls 3 t '',\
  '../tablealtgg.dat' u 1:4:5 w err ls 4 pt 6 t '',\
  '' u 1:4 w l ls 4 t '',\
  '<paste ../tablealtgg.dat ../common/tablerge2ep0gg.dat' u 1:($4+$16):3 w err ls 3 pt 6 t '',\
  '' u 1:($4+$16) w l ls 3 t ''

plot \
  '../common/tablergegg.dat' u 1:(-$4) w l ls 1 t '',\
  '../common/tablergegg.dat' u 1:(-$5) w l ls 2 t ''

#-----------------------------------------------------------------------------
set origin 0.66, 0.65
set key top left
set title 'S_{13}'
set yrange [-10:80]

plot   \
  '<paste ../tabletad13gg.dat ../tablebub13gg.dat ../table2cut13gg.dat ../oldtable1cutgg.dat'  \
  u 1:($2+$6+$24+$40):($25) w err ls 1 t '',\
  '<paste ../tabletad13gg.dat ../tablebub13gg.dat ../table2cut13gg.dat ../oldtable1cutgg.dat'  \
  u 1:($3+$7+$26+$41):($27) w err ls 2 t '',\
  '<paste ../tabletad13gg.dat ../tablebub13gg.dat ../table2cut13gg.dat ../oldtable1cutgg.dat'  \
  u 1:($4+$8+$28+$42):($29) w err ls 3 t '',\
  '../tablealtgg.dat' u 1:6:7 w err ls 4 pt 6 t '',\
  '' u 1:6 w l ls 4 t '',\
  '<paste ../tablealtgg.dat ../common/tablerge2ep0gg.dat' u 1:($6+$17):7 w err ls 3 pt 6 t '',\
  '' u 1:($6+$17) w l ls 3 t ''


plot \
  '../common/tablergegg.dat' u 1:(-$6) w l ls 1 t '',\
  '../common/tablergegg.dat' u 1:(-$7) w l ls 2 t ''

#-----------------------------------------------------------------------------
set origin 0, 0.142857
set key bottom left
set title 'S_{22}'
set yrange [-150:700]

plot   \
  '<paste ../tabletad22gg.dat ../tablebub22gg.dat ../table2cut22gg.dat ../oldtable1cutgg.dat'  \
  u 1:($2+$6+$24+$44):($25) w err ls 1 t '',\
  '<paste ../tabletad22gg.dat ../tablebub22gg.dat ../table2cut22gg.dat ../oldtable1cutgg.dat'  \
  u 1:($3+$7+$26+$45):($27) w err ls 2 t '',\
  '<paste ../tabletad22gg.dat ../tablebub22gg.dat ../table2cut22gg.dat ../oldtable1cutgg.dat'  \
  u 1:($4+$8+$28+$46):($29) w err ls 3 t '',\
  '../tablealtgg.dat' u 1:8:9 w err ls 4 pt 6 t '',\
  '' u 1:8 w l ls 4 t '',\
  '<paste ../tablealtgg.dat ../common/tablerge2ep0gg.dat' u 1:($8+$18):9 w err ls 3 pt 6 t '',\
  '' u 1:($8+$18) w l ls 3 t ''

plot \
  '../common/tablergegg.dat' u 1:(-$8) w l ls 1 t '',\
  '../common/tablergegg.dat' u 1:(-$9) w l ls 2 t ''

#-----------------------------------------------------------------------------
set origin 0.33, 0.142857
set key top left
set title 'S_{23}'
set yrange [-60:80]

plot   \
  '<paste ../tabletad23gg.dat ../tablebub23gg.dat ../table2cut23gg.dat ../oldtable1cutgg.dat'  \
  u 1:($2+$6+$24+$48):($25) w err ls 1 t '',\
  '<paste ../tabletad23gg.dat ../tablebub23gg.dat ../table2cut23gg.dat ../oldtable1cutgg.dat'  \
  u 1:($3+$7+$26+$49):($27) w err ls 2 t '',\
  '<paste ../tabletad23gg.dat ../tablebub23gg.dat ../table2cut23gg.dat ../oldtable1cutgg.dat'  \
  u 1:($4+$8+$28+$50):($29) w err ls 3 t '',\
  '../tablealtgg.dat' u 1:10:11 w err ls 4 pt 6 t '',\
  '' u 1:10 w l ls 4 t '',\
  '<paste ../tablealtgg.dat ../common/tablerge2ep0gg.dat' u 1:($10+$19):11 w err ls 3 pt 6 t '',\
  '' u 1:($10+$19) w l ls 3 t ''


plot \
  '../common/tablergegg.dat' u 1:(-$10) w l ls 1 t '',\
  '../common/tablergegg.dat' u 1:(-$11) w l ls 2 t ''

#-----------------------------------------------------------------------------
set origin 0.66, 0.142857
set key top left
set title 'S_{33}'
set yrange [-100:400]

plot   \
  '<paste ../tabletad33gg.dat ../tablebub33gg.dat ../table2cut33gg.dat ../oldtable1cutgg.dat'  \
  u 1:($2+$6+$24+$52):($25) w err ls 1 t '',\
  '<paste ../tabletad33gg.dat ../tablebub33gg.dat ../table2cut33gg.dat ../oldtable1cutgg.dat'  \
  u 1:($3+$7+$26+$53):($27) w err ls 2 t '',\
  '<paste ../tabletad33gg.dat ../tablebub33gg.dat ../table2cut33gg.dat ../oldtable1cutgg.dat'  \
  u 1:($4+$8+$28+$54):($29) w err ls 3 t '',\
  '../tablealtgg.dat' u 1:12:13 w err ls 4 pt 6 t '',\
  '' u 1:12 w l ls 4 t '',\
  '<paste ../tablealtgg.dat ../common/tablerge2ep0gg.dat' u 1:($12+$20):13 w err ls 3 pt 6 t '',\
  '' u 1:($12+$20) w l ls 3 t ''

plot \
  '../common/tablergegg.dat' u 1:(-$12) w l ls 1 t '',\
  '../common/tablergegg.dat' u 1:(-$13) w l ls 2 t ''


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
  '<paste ../tabletad11gg.dat ../tablebub11gg.dat ../table2cut11gg.dat ../oldtable1cutgg.dat ../common/tablerge2gg.dat'  \
  u 1:(-($2+$6+$24+$32)/$80):($25/$80) w err ls 1 t '',\
  '<paste ../tabletad11gg.dat ../tablebub11gg.dat ../table2cut11gg.dat ../oldtable1cutgg.dat ../common/tablerge2gg.dat'  \
  u 1:(-($3+$7+$26+$33)/$81):($27/$81) w err ls 2 t ''



#-----------------------------------------------------------------------------
set origin 0.33,0.507
#set yrange [*:*]
plot   \
   1 lt -1 t '',\
  '<paste ../tabletad12gg.dat ../tablebub12gg.dat ../table2cut12gg.dat ../oldtable1cutgg.dat ../common/tablerge2gg.dat'  \
  u 1:(-($2+$6+$24+$36)/$82):($25/$82) w err ls 1 t '',\
  '<paste ../tabletad12gg.dat ../tablebub12gg.dat ../table2cut12gg.dat ../oldtable1cutgg.dat ../common/tablerge2gg.dat'  \
  u 1:(-($3+$7+$26+$37)/$83):($27/$83) w err ls 2 t ''



#-----------------------------------------------------------------------------
set origin 0.66,0.507
plot   \
   1 lt -1 t '',\
  '<paste ../tabletad13gg.dat ../tablebub13gg.dat ../table2cut13gg.dat ../oldtable1cutgg.dat ../common/tablerge2gg.dat'  \
  u 1:(-($2+$6+$24+$40)/$84):($25/$84) w err ls 1 t ''
#  '<paste ../tabletad13gg.dat ../tablebub13gg.dat ../table2cut13gg.dat ../oldtable1cutgg.dat ../common/tablerge2gg.dat'  \
#  u 1:(-($3+$7+$26+$41)/$85):($27/$85) w err ls 2 t ''


#-----------------------------------------------------------------------------
set origin 0,0.0
plot   \
   1 lt -1 t '',\
  '<paste ../tabletad22gg.dat ../tablebub22gg.dat ../table2cut22gg.dat ../oldtable1cutgg.dat ../common/tablerge2gg.dat'  \
  u 1:(-($2+$6+$24+$44)/$86):($25/$86) w err ls 1 t '',\
  '<paste ../tabletad22gg.dat ../tablebub22gg.dat ../table2cut22gg.dat ../oldtable1cutgg.dat ../common/tablerge2gg.dat'  \
  u 1:(-($3+$7+$26+$45)/$87):($27/$87) w err ls 2 t ''



#-----------------------------------------------------------------------------
set origin 0.33,0.0
plot   \
   1 lt -1 t '',\
  '<paste ../tabletad23gg.dat ../tablebub23gg.dat ../table2cut23gg.dat ../oldtable1cutgg.dat ../common/tablerge2gg.dat'  \
  u 1:(-($2+$6+$24+$48)/$88):($25/$88) w err ls 1 t '',\
  '<paste ../tabletad23gg.dat ../tablebub23gg.dat ../table2cut23gg.dat ../oldtable1cutgg.dat ../common/tablerge2gg.dat'  \
  u 1:(-($3+$7+$26+$49)/$89):($27/$89) w err ls 2 t ''



#-----------------------------------------------------------------------------
set origin 0.66,0.0
plot   \
   1 lt -1 t '',\
  '<paste ../tabletad33gg.dat ../tablebub33gg.dat ../table2cut33gg.dat ../oldtable1cutgg.dat ../common/tablerge2gg.dat'  \
  u 1:(-($2+$6+$24+$52)/$90):($25/$90) w err ls 1 t '',\
  '<paste ../tabletad33gg.dat ../tablebub33gg.dat ../table2cut33gg.dat ../oldtable1cutgg.dat ../common/tablerge2gg.dat'  \
  u 1:(-($3+$7+$26+$53)/$91):($27/$91) w err ls 2 t ''

