# gnuplot script

# POWHEGBOX results
!top2mine.py -f ../runs-powheg/inputttjLOddbar-NLO.top > /tmp/ttjLOPWG.dat
!rmblock.py -s 'BOTTOM " ttbar logpt logptttb> 0' -e HIST -b  \
             -f /tmp/ttjLOPWG.dat | grep -v "\#" > /tmp/ptPWGLO.dat

# topqT++limited results
!sed 1,+9d '../runs-topqT++limited/hist_real_ddbarNNLO_logqT.dat' > \
           /tmp/topqT++NLO.dat

##########################
set terminal pngcairo enhanced solid size 500, 550 font "Helvetica, 10"
set output 'ttjNLOddbar.png'
set multiplot
set bars small

set title 'pp {/Symbol \256} tt + jet, ddbar channel'

#########
set key right bottom Left width 3
set grid
set size 1.0,0.65
set origin 0.0,0.355
set lmargin 10.0

set xrange[0:2]
set label 1 "LHC, 8 TeV, CT10" at graph 0.02,0.93 left
set xlabel ""
set ylabel "q_T d{/Symbol s}/q_{T} [fb]"
set xtics format ""
set xtics 0.2
set mxtics 5

unitconv=1e3

plot  \
   \
  '<paste /tmp/topqT++NLO.dat' \
        u 2:($4/2) w histeps lt 3 t 'NLO-only topqT++limited',\
     '' u 2:($4/2):($5/2) w yerrorbars lt 3 ps 0 t '',\
  \
  '<paste /tmp/ptPWGLO.dat ../runs-powheg/ptPWGNLO.dat'  \
        u 1:(($10-$2)*unitconv) w histeps lt 1 t 'NLO-only Powheg',\
  '<paste /tmp/ptPWGLO.dat ../runs-powheg/ptPWGNLO.dat'  \
        u 1:(($10-$2)*unitconv):($11*unitconv) w yerrorbars lt 1 ps 0.01 t '',\
  '<paste /tmp/ptPWGLO.dat ../runs-powheg/ptPWGNLOtest.dat'  \
        u 1:(($10-$2)*unitconv) w histeps lt 4 t 'NLO-only Powheg test',\
  '<paste /tmp/ptPWGLO.dat ../runs-powheg/ptPWGNLOtest.dat'  \
        u 1:(($10-$2)*unitconv):($11*unitconv) w yerrorbars lt 4 ps 0.01 t ''


#########
set size 1.0,0.4
set origin 0.0,0.0
unset title
set ylabel ""
set xlabel "log(q_{T}/GeV)"
set grid
set yrange [0.72:1.3]
set xtics format "%.1f"
set key reverse at graph 0.02, 0.10 left
set mytics 2
unset label 1
unset logscale y

# ratio = y/x
ratioerr(x,dx,y,dy) = 1/y*dx +x/y**2*dy
sqrterr(x,y) = sqrt(x*x+y*y)

plot \
   1 lt 0 t '',\
   '<paste  /tmp/topqT++NLO.dat ../runs-powheg/ptPWGNLO.dat /tmp/ptPWGLO.dat'  \
   u ($2):(($4/2)/($12-$15)/unitconv) w histeps lt 3 t 'topqT++limited/Powheg',\
   '' u 2:(($4/2)/($12-$15)/unitconv):(ratioerr($4/2,$5/2,($12-$15)*unitconv,sqrterr($13,$16)*unitconv)) w yerrorbars lt 3 ps 0 t '',\
   '<paste  /tmp/topqT++NLO.dat ../runs-powheg/ptPWGNLOtest.dat /tmp/ptPWGLO.dat'\
   u ($2):(($4/2)/($12-$15)/unitconv) w histeps lt 4 t 'topqT++limited/Powheg test',\
   '' u ($2+0.02):(($4/2)/($12-$15)/unitconv):(ratioerr($4/2,$5/2,($12-$15)*unitconv,sqrterr($13,$16)*unitconv)) w yerrorbars lt 4 ps 0 t ''

#
unset multiplot
reset
