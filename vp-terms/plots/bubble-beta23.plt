#
 
set terminal pngcairo enhanced size 7in, 7in 
set output 'bubble-beta23.png'

set multiplot

set ylabel "G^{23} - ^1/@_2  G^{33}"
set xlabel "{/Symbol b}"
set format y "10^{%T}"

set style line 1 lt 1 lw 2 pt 13 ps 1.2 lc rgb "red" 
set style line 2 lt 1 lw 2 pt 13 ps 1.2 lc rgb "green" 
set style line 3 lt 1 lw 2 pt 13 ps 1.2 lc rgb "blue" 
set style line 4 lt 1 lw 2 pt 13 ps 1.2 lc rgb "violet" 

set xrange [0:1]
set yrange [2:120]

set logscale y

#-----------------------------------------------------------------------------
set origin 0,0
set key at graph 0.35,0.9
set label "Analytic       Numeric" at graph 0.17, 0.95 left 
set label "{/Symbol q} = {/Symbol p}/4" at graph 0.75, 0.84 left 
#set label "{/Symbol q} = Pi/4" at graph 0.67, 0.85 left 
plot   \
  'math23beta.dat' u 1:5 w l ls 4 t '1',\
  'math23beta.dat' u 1:4 w l ls 3 t '1/{/Symbol e}',\
  'math23beta.dat' u 1:3 w l ls 2 t '1/{/Symbol a}',\
  'math23beta.dat' u 1:2 w l ls 1 t '1/{/Symbol (ae)}'

#-----------------------------------------------------------------------------
set origin 0,0
set xlabel " "
set ylabel " "
#set xtics -1,10, 100
#set ytics -1,200,1000
set format y "\  "
set format x "\ "
unset border
set key at graph 0.57,0.9

plot \
  'sfcalcres/beta2300.dat' u 1:2 w p ls 4 t ' ',\
  'sfcalcres/beta2301.dat' u 1:2 w p ls 3 t ' ',\
  'sfcalcres/beta2310.dat' u 1:2 w p ls 2 t ' ',\
  'sfcalcres/beta2311.dat' u 1:2 w p ls 1 t ' '
