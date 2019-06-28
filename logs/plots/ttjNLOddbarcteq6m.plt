# gnuplot script
set macros

# topqT++
!grep -v  "\#"  ../runs-topqT++limited/hist_real_ddbarNNLO_logqT.dat | sed 1,+9d > /tmp/toplogqT.dat

# MC@NLO LO
dir='../runs-mg5/ddbarttjResultsNLO10/'
!top2mine.py -f @dir'MADatNLO.top' > /tmp/MADatNLO.mine
!sed -i 's/D/E/g' /tmp/MADatNLO.mine
!mergeidx.pl '\" logpt_tt' -f /tmp/MADatNLO.mine | grep -v '\#' > /tmp/ptMG5.dat

# Powheg
#!cat ../runs-powheg/ttjNLOddbarseed0-NLO_logptttbar.res > /tmp/ptPowheg.dat
!cat ../runs-powheg/results/ttjNLOddbar-10seedcomb-NLO_logptttbar.dat > /tmp/ptPowheg.dat
#!cat ../runs-powheg/ttjNLOddbar-2seed0-NLO_logptttbar.res > /tmp/ptPowheg.dat

##########################
set terminal pngcairo enhanced solid size 500, 550 font "Helvetica, 10"
set output 'ttjNLOddbarcteq6m.png'
set multiplot

set title 'pp {/Symbol \256} tt + jet, ddbar channel'

#########
set key left top Left width 3
set size 1.0,0.65
set origin 0.0,0.355
set lmargin 12.0

#set yrange [-1e3:3e3]
set xrange[0:4]
set label 1 "LHC, 8 TeV, cteq6mE" at graph 0.05,0.10 left
set xlabel ""
set ylabel "q_T d{/Symbol s}/q_{T} [fb]"
set xtics format ""
set xtics 0.5
set mxtics 5

#set logscale y
unitconv=1e3


plot  \
  '/tmp/ptMG5.dat' u 1:($2*unitconv):($3*unitconv) \
                       w errorbars lt 1 pt 1 t 'MG5\_aMC\@NLO',\
  '/tmp/ptPowheg.dat' u 3:($7*unitconv):($8*unitconv) \
                       w errorbars lt 2 pt 1 t 'Powheg',\

#  '/tmp/toplogqT.dat'  u 2:($4)   w histeps  lt 3 t 'NLO topqT++limited',\
#  ''                   u 2:($4):($5) w errorbars lt 3 ps 0 t '',\
#########
set size 1.0,0.4
set origin 0.0,0.0
unset title
set ylabel ""
set xlabel "log(q_{T}/GeV)"
set yrange [0.8:1.3]
#set yrange [0:2]
#set yrange [0.62:1.48]
set xtics format "%.1f"
set ytics format "%.1f"
set key at graph 0.05, 0.95  left
set ytics 0.2
set mytics 2
unset label 1
unset logscale y

# error of the ratio y/x
ratioerr(x,dx,y,dy) = 1/y*dx +x/y**2*dy

plot \
    1 lt 0 t '',\
  '<paste /tmp/ptMG5.dat /tmp/ptPowheg.dat'  \
     u 1:($2/$10) w histeps lt 1 t '',\
    '' u 1:($2/$10):(ratioerr($2,$3,$10,$11)) \
    w yerrorbars ps 0 lt 1 t ''

#    '<paste /tmp/toplogqT.dat /tmp/ptMG5.dat'  \
#    u 2:($4/2/$7/unitconv) w histeps lt 3 t 'topqT++limited/MG5 NLO',\
#    '' u 2:($4/2/$7/unitconv):(ratioerr($4/2,$5/2,$7*unitconv,$8*unitconv)) \
#    w yerrorbars ps 0 lt 3 t ''

unset multiplot
reset
