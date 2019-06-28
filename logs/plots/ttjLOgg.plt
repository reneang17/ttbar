# gnuplot script

# topqT++
!grep -v  "\#"  ../runs-topqT++limited/hist_real_ggNLO_logqT.dat | sed 1,+9d > /tmp/topqT.dat

## MCFM data files
#!top2mine.py -f ../runs-mcfm/tt_glu_lord_CT10.LH_173_173_all.top > /tmp/ttjLOMCFM.dat
#!mergeidx.pl '\"logpt5' -f /tmp/ttjLOMCFM.dat | grep -v "\#"   > /tmp/ptMCFM.dat
#!cat /tmp/ptMCFM.dat > /tmp/ptMCFMratio.dat

# POWHEGBOX data files
!top2mine.py -f ../runs-powheg/inputttjLOgg-NLO.top > /tmp/ttjLOPWG.dat
!rmblock.py -s 'BOTTOM " ttbar logpt logptttb> 0' -e HIST -b  \
             -f /tmp/ttjLOPWG.dat \
             | grep -v "\#" > /tmp/ptPWGLO.dat
!cat /tmp/ptPWGLO.dat > /tmp/ptPWGratio.dat


##########################
set terminal pngcairo enhanced solid size 500, 550 font "Helvetica, 10"
set output 'ttjLOgg.png'
set multiplot
#set bars small

set title 'pp {/Symbol \256} tt + jet, gg channel'

#########
set key right top  Left width 3
set size 1.0,0.65
set origin 0.0,0.355
set lmargin 10.0

set xrange[0:4]
set label 1 "LHC, 8 TeV, CT10" at graph 0.05,0.10 left
set xlabel ""
set ylabel "q_T d{/Symbol s}/q_{T} [fb]"
set xtics format ""
set xtics 0.5
set mxtics 5

unitconv=1e3

plot  \
  '/tmp/topqT.dat'  u 2:4:5 w errorbars lt 4 ps 0 t'',\
                ''  u 2:4   w histeps   lt 4 t 'LO topqT++',\
  '/tmp/ptPWGLO.dat' u 1:($2*unitconv) w histeps lt 2 t 'LO Powheg',\
                '' u 1:($2*unitconv):($3*unitconv) w errorbars lt 2 ps 0 t ''


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
    1 lt 0 t '' ,\
    '<paste /tmp/ptPWGratio.dat /tmp/topqT.dat' \
    u ($1):($7/$2/unitconv) w histeps lt 4 t 'topqT++/Powheg',\
    '' u ($1):($7/$2/unitconv):(ratioerr($7,$8,$2*unitconv,$3*unitconv)) \
       w yerrorbars ps 0 lt 4 t ''

unset multiplot
reset
