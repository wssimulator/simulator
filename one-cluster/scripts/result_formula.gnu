#!/usr/bin/env gnuplot 

print "ARGC = ".ARGC

latency=ARG1
filename = ARG2."-boxp-".latency
print "latency = ".latency

if (ARGC==0) {
    print "latency value missed, command must be like : "
    print ""
    print "  ~# gnuplot -c result_formula.gnu latencyValue"
    print ""
    exit 
} 


set term postscript eps color blacktext "Helvetica" 18
set grid
set xlabel '(Work, Processors)'                                                         
set ylabel 'Overhead Ratio'                                             

set yrange [1:]
#set ytics 0.1 

set xtics rotate by -55
#plot "boxP/new_order_fot_box_latency_2" using (0):($4/$3):(0):2 with boxplot title "latency = 2",
#plot "boxinv" using (0):($4/$3):(0):2 with boxplot notitle "latency = 262", 
set output "../figures/overheadratioWPinv".latency.".eps"
plot filename using (0):($5/$4):(0):3 with boxplot title "latency = ".latency,

print "generate : ../figures/overheadratioWPinv".latency.".eps"    








