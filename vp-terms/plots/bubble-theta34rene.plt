#
 
set terminal pngcairo enhanced dashed size 7in, 7in 
set output 'bubble-theta34rene.png'

set multiplot

set ylabel "G^{tt} - ^1/@_2  G^{tt} - ^1/@_2  G^{tt}"
set xlabel "{/Symbol q}"
#set format y "10^{%T}"

set style line 1 lt 1 lw 2 pt 13 ps 1.2 lc rgb "red" 
set style line 2 lt 1 lw 2 pt 13 ps 1.2 lc rgb "green" 
set style line 3 lt 2 lw 3 pt 13 ps 1.2 lc rgb "blue" 
set style line 4 lt 1 lw 2 pt 13 ps 1.2 lc rgb "violet" 

set xrange [0:3.14159]
set yrange [9:23]

xpos=-0.540
set arrow from xpos,14.2 to xpos,14.3 nohead
ypos2=18.05
set arrow from xpos,ypos2 to xpos,ypos2+0.1 nohead
ypos2=18.25
set arrow from xpos,ypos2 to xpos,ypos2+0.1 nohead

#set logscale y

#-----------------------------------------------------------------------------
set origin 0,0
set key                            at graph 0.30,0.85
set label "Analytic       Numeric" at graph 0.13,0.9 left 

set label "{/Symbol b} = 0.9" at graph 0.77, 0.90 left 
set format x "%.1f"
set xtics 0.5
set mxtics 5
plot   \
  'math34theta.dat' u 1:2 w l ls 4 t '1',\
  'math34theta.dat' u 1:3 w l ls 3 t '1/{/Symbol e}'

#-----------------------------------------------------------------------------
set origin 0,0
set xlabel " "
set ylabel " "
#set xtics -1,10, 100
#set ytics -1,200,1000
set format y "\   "
set format x "\ "
unset border
set key at graph 0.55,0.85

plot \
  'sfcalcres/theta3400.dat' u 1:2 w p ls 4 t ' ',\
  'sfcalcres/theta3401.dat' u 1:2 w p ls 3 t ' '
