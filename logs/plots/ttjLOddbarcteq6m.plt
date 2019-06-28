# gnuplot script
set macros

# topqT++
!grep -v  "\#"  ../runs-topqT++limited/hist_real_ddbarNLOcteq6mE_logqT.dat | sed 1,+9d > /tmp/toplogqT.dat

# MC@NLO LO
dir='../runs-mg5/ddbarttjResultsLO/'
!top2mine.py -f @dir'MADatNLO.top' > /tmp/MADatNLO.mine
!sed -i 's/D/E/g' /tmp/MADatNLO.mine
!mergeidx.pl '\" logpt_tt' -f /tmp/MADatNLO.mine | grep -v '\#' > /tmp/ptMG5.dat

# Powheg
!cat ../runs-powheg/ttjNLOddbarseed0-NLO_logptttbar.res > /tmp/ptPowheg.dat


##########################
set terminal pngcairo enhanced solid size 500, 550 font "Helvetica, 10"
set output 'ttjLOddbarcteq6m.png'
set multiplot

set title 'pp {/Symbol \256} tt + jet, ddbar channel'

#########
set key right top  Left width 3
set size 1.0,0.65
set origin 0.0,0.355
set lmargin 12.0

set xrange[0:4]
set label 1 "LHC, 8 TeV, cteq6mE" at graph 0.05,0.10 left
set xlabel ""
set ylabel "q_T d{/Symbol s}/q_{T} [fb]"
set xtics format ""
set xtics 0.5
set mxtics 5

unitconv=1e3


plot  \
  '/tmp/ptMG5.dat' u 1:($2*unitconv):($3*unitconv) \
                       w errorbars lt 1 pt 1 t 'MG5 NLO',\
  '/tmp/toplogqT.dat'  u 2:($4)   w histeps  lt 3 t 'NLO topqT++limited',\
  ''                   u 2:($4):($5) w errorbars lt 3 ps 0 t '',\
  '/tmp/ptPowheg.dat' u 2:($7*unitconv):($8*unitconv) \
                       w errorbars lt 1 pt 1 t 'Powheg',\

#########
set size 1.0,0.4
set origin 0.0,0.0
unset title
set ylabel ""
set xlabel "log(q_{T}/GeV)"
set yrange [0.62:1.48]
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
    '<paste /tmp/toplogqT.dat /tmp/ptMG5.dat'  \
    u 2:($4/2/$7/unitconv) w histeps lt 3 t 'topqT++limited/MG5 LO',\
    '' u 2:($4/2/$7/unitconv):(ratioerr($4/2,$5/2,$7*unitconv,$8*unitconv)) \
    w yerrorbars ps 0 lt 3 t ''

unset multiplot
reset
