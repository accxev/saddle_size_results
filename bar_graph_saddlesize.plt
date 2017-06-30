# bar graphs for the calculated saddle sizes

#set terminal postscript color# enhanced
#set output "bargraph.eps" 
#set terminal latex
#set output "saddleplot.tex"
unset colorbox
#set title "% of saddle sizes for games with i actions"
#set title  boxed offset 0,-3 font ",15"
set style fill solid border lt -1
set style textbox opaque noborder
set boxwidth 1.0 abs
ClusterSize = 15
unset key

set yrange [0:1]
set xrange [-2:120]
set border 0
category = "2-7008 4-7000 6-7000 7-7000 8-7000 9-7000 10-7000"
set format x "" 
#set xtics scale 0 ()
#set ytics scale 0 nomirror
#set grid y
#set colorb horizontal user origin .05, .05 size .9, .05
set palette cubehelix
#set bmargin at screen 0.2
#set tmargin at screen 0.9

set for [i=1:7] xtics add (word(category,i) 5+(i-1)*ClusterSize)

xcoord(i) =  i*ClusterSize + column(1)
color(i)  =  column(1)

plot for [i=0:6] 'candlesticks.dat' \
     using (xcoord(i)):(column(i+2)):(color(i)) with boxes lc palette z

