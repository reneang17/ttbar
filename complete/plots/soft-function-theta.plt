#
 
set terminal pngcairo enhanced size 7in, 7in 
set output 'bubble-theta13.png'

set multiplot

set ylabel "- G^{13} + ^1/@_2  G^{33}"
set xlabel "{/Symbol q}"
#set format y "10^{%T}"

set style line 1 lt 1 lw 2 pt 13 ps 1.2 lc rgb "red" 
set style line 2 lt 1 lw 2 pt 13 ps 1.2 lc rgb "green" 
set style line 3 lt 1 lw 2 pt 13 ps 1.2 lc rgb "blue" 
set style line 4 lt 1 lw 2 pt 13 ps 1.2 lc rgb "violet" 

set xrange [0:3.14159]
set yrange [0:29]

#set logscale y

#-----------------------------------------------------------------------------
set origin 0,0
set key                            at graph 0.72,0.70
set label "Analytic       Numeric" at graph 0.55,0.75 left 
set label "{/Symbol b} = 0.9" at graph 0.77, 0.90 left 
set format x "%.1f"
set xtics 0.5
set mxtics 5
plot   \
  'math13theta.dat' u 1:(-$5) w l ls 4 t '1',\
  'math13theta.dat' u 1:(-$4) w l ls 3 t '1/{/Symbol e}',\
  'math13theta.dat' u 1:(-$3) w l ls 2 t '1/{/Symbol a}',\
  'math13theta.dat' u 1:(-$2) w l ls 1 t '1/{/Symbol (ae)}'

#-----------------------------------------------------------------------------
set origin 0,0
set xlabel " "
set ylabel " "
#set xtics -1,10, 100
#set ytics -1,200,1000
set format y "\   "
set format x "\ "
unset border
set key at graph 0.95,0.70

plot \
  'sfcalcres/theta1300.dat' u 1:(-$2) w p ls 4 t ' ',\
  'sfcalcres/theta1301.dat' u 1:(-$2) w p ls 3 t ' ',\
  'sfcalcres/theta1310.dat' u 1:(-$2) w p ls 2 t ' ',\
  'sfcalcres/theta1311.dat' u 1:(-$2) w p ls 1 t ' '
