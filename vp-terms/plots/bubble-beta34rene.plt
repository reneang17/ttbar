#
 
set terminal pngcairo enhanced dashed size 7in, 7in 
set output 'bubble-beta34rene.png'

set multiplot

set ylabel "G^{tt} - ^1/@_2  G^{tt} - ^1/@_2  G^{tt}"
set xlabel "{/Symbol b}"
#set format y "10^{%T}"

set style line 1 lt 1 lw 2 pt 13 ps 1.2 lc rgb "red" 
set style line 2 lt 1 lw 2 pt 13 ps 1.2 lc rgb "green" 
set style line 3 lt 2 lw 3 pt 13 ps 1.2 lc rgb "blue" 
set style line 4 lt 1 lw 2 pt 13 ps 1.2 lc rgb "violet" 

set arrow from -0.202,59 to -0.202,60.5 nohead
ypos2=106
set arrow from -0.202,ypos2 to -0.202,ypos2+1.5 nohead
ypos2=103.5
set arrow from -0.202,ypos2 to -0.202,ypos2+1.5 nohead
set xrange [0:1]
set yrange [0:160]

#set logscale x
#set logscale y

#-----------------------------------------------------------------------------
set origin 0,0
set key at graph 0.35,0.9
set label "Analytic       Numeric" at graph 0.17, 0.95 left 
set label "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
#set label "{/Symbol q} = Pi/4" at graph 0.67, 0.85 left 
plot   \
  'math34beta.dat' u 1:2 w l ls 4 t '1',\
  'math34beta.dat' u 1:3 w l ls 3 t '1/{/Symbol e}'

#-----------------------------------------------------------------------------
set origin 0,0
set xlabel " "
set ylabel " "
#set xtics -1,10, 100
#set ytics -1,200,1000
set format y "\    "
set format x "\ "
unset border
set key at graph 0.57,0.9

plot \
  'sfcalcres/beta3400.dat' u 1:2 w p ls 4 t ' ',\
  'sfcalcres/beta3401.dat' u 1:2 w p ls 3 t ' '

