# set data file
datafile = '100_rel_trans.dat'

set title "Comparison of percentage of saddles and nash equilibria with a certain size"
set key left

#set xrange [1:STATS_records]
set xrange [0:10000000]
set yrange [0:1]
stats datafile using 1:2
set xrange [1:STATS_records]
set yrange [0:1]

set grid y

#plot datafile using 1:2:3 with filledcurves above title 'Percentage of nash equilibria with this size is greater', \
#           '' using 1:2:3 with filledcurves below title 'Percentage of saddles with this size is greater', \
#           '' using 1:2   with linespoints lt 3 lw 3 title '% of games with saddles of this size', \
#           '' using 1:3   with linespoints lt 1 lw 3 title '% of games with nash equlibria of this size'

plot datafile using 1:2   with linespoints lt 3 lw 3 title '% of games with saddles of this size', \
           '' using 1:3   with linespoints lt 1 lw 3 title '% of games with nash equlibria of this size'
