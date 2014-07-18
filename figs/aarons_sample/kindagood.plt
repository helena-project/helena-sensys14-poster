set term postscript eps font "Helvetica,22" size 5in,7in
set output "kindagood.eps"

set border 3 lw 2
set xtics nomirror scale 2
set ytics nomirror scale 2
set mxtics 5 
set mytics 5 

set label at 0,1 "hello" font "Helvetica,25" tc rgb 'orange'

#set datafile delim ','

set yrange [0:]
set xrange [0:]

set key at 250,0.3

set xlabel 'the x'
set ylabel 'the y'
set format y "%0.1g"

set multiplot layout 2,1

plot 'kg.txt' using 1:2 with linespoints pointsize 3 pointtype 19 linecolor rgb '#403020' title 'blah'

unset ylabel
set xrange [0:100]
set ylabel ' '
set ytics 0.1

plot '' using 1:3 with linespoints pointsize 3 pointtype 10 linewidth 4 linecolor rgb '#403020' title 'blah'
unset multiplot


