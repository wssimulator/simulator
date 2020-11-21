#!/usr/bin/env gnuplot 

print "ARGC = ".ARGC

latency=ARG1

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
plot "../data/data-for-boxplot/output-bxp-latency-".latency using (0):($5/$4):(0):3 with boxplot title "latency = ".latency,

print "generate : ../figures/overheadratioWPinv".latency.".eps"    
#set output "overheadratioWPinv262.eps"
#plot "boxP/../data/output-latency-262" using (0):($5/$4):(0):3 with boxplot title "latency = 262", 
#set output "overheadratioWPinv482.eps"
#plot "boxP/fit482" using (0):($5/$4):(0):3 with boxplot title "latency = 482", 
#plot "boxP/new_order_fot_box_latency_482" using (0):($4/$3):(0):2 with boxplot title "latency = 482",


#set output "overheadratio1.eps"
#set yrange [0:2]
#set ytics 0.1 

#set xtics rotate by -55
#plot "boxP/new_order_fot_box_latency_2" using (0):($4/$3):(0):2 with boxplot title "latency = 2",
#plot "boxP/../data/output-latency-262" using (0):($6/$4):(0):3 with boxplot notitle "latency = 262",
#plot "boxP/new_order_fot_box_latency_482" using (0):($4/$3):(0):2 with boxplot title "latency = 482",





#set output "../../../../../../ccgrid2017/figures/stealLatency.eps"
#set xlabel '{/Symbol l}'                                                               

#set ylabel 'steal requests number'

#set key c bm horizontal
#set yrange[:12000]
#plot "p32w100000000" u 2:3 s u w lp title "p = 32",  "p128w100000000" u 2:3 s u w lp title "p = 64", "p128w100000000" u 2:3 s u w lp title "p = 128", "p256w100000000" u 2:3 s u w lp title "p = 256"



#set output "HistoGram1.eps"
#set xlabel 'W/p'                                                         
#set ylabel 'Average accuracy Ratio'                                             


#set xtics rotate by -55
#unset yrange 
#set style data histogram
#set style fill solid border -1
#plot 'histo.csv' using 2:xtic(1) ti "{/Symbol l}=2" linecolor "blue", '' u 3 t "{/Symbol l}=262" linecolor "red", '' u 4 ti "{/Symbol l}=482" linecolor "green"


#set output "../../../../../../ccgrid2017/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/ratioWP_l482.eps"

#set ytics 0.1 

#set xtics rotate by -55

#plot "order_fot_box_latency_482" using (1.0):($3/$4):(0.2):2 with boxplot title "simple : latency = 482", 0.95 notitle lc 0, 1.05 notitle lc 0


#set output "../../../../../../papiers/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/ratioWP_l2.eps"
#set ytics 0.1 
#set xtics rotate by -55
#plot "order_fot_box_latency_2" using (1.0):($3/$4):(0.2):2 with boxplot title "simple : latency = 2", 0.95 notitle lc 0, 1.05 notitle lc 0

#sset yrange[0.8:1.2]
#set yrange[0.8:1.2]
#slot "../model_and_formul/p128w100000" using 2:($7/$15) smooth unique t "10^5" w lp linestyle 3 ,  "../model_and_formul/p128w1000000" u 2:($7/$15) s u t "10^6" w lp linestyle 2 , "../model_and_formul/p128w10000000" using 2:($7/$15) title "10^7" smooth unique linestyle 1 w lp,  "../model_and_formul/p128w100000000" u 2:($7/$15) s u t "10^8" linestyle 4 w lp , 0.95 w l lc 0 , 1.05 w l lc 0                  
#s
#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rl64.eps"
#set yrange[0.8:1.2]
#slot "../model_and_formul/p128w100000" using 2:($7/$15) smooth unique t "10^5" w lp linestyle 3 ,  "../model_and_formul/p64w1000000" u 2:($7/$15) s u t "10^6" w lp linestyle 2 , "../model_and_formul/p64w10000000" using 2:($7/$15) title "10^7" smooth unique linestyle 1 w lp,  "../model_and_formul/p64w100000000" u 2:($7/$15) s u t "10^8" linestyle 4 w lp , 0.95 w l lc 0 , 1.05 w l lc 0                  
#s
#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rl32.eps"
#set yrange[0.8:1.2]
#slot "../model_and_formul/p32w100000" using 2:($7/$15) smooth unique t "10^5" w lp linestyle 3 ,  "../model_and_formul/p32w1000000" u 2:($7/$15) s u t "10^6" w lp linestyle 2 , "../model_and_formul/p32w10000000" using 2:($7/$15) title "10^7" smooth unique linestyle 1 w lp,  "../model_and_formul/p32w100000000" u 2:($7/$15) s u t "10^8" linestyle 4 w lp , 0.95 w l lc 0 , 1.05 w l lc 0                  
#s
#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rl256.eps"
#set yrange[0.8:1.2]
#slot "../model_and_formul/p256w100000" using 2:($7/$15) smooth unique t "10^5" w lp linestyle 3 ,  "../model_and_formul/p256w1000000" u 2:($7/$15) s u t "10^6" w lp linestyle 2 , "../model_and_formul/p256w10000000" using 2:($7/$15) title "10^7" smooth unique linestyle 1 w lp,  "../model_and_formul/p256w100000000" u 2:($7/$15) s u t "10^8" linestyle 4 w lp , 0.95 w l lc 0 , 1.05 w l lc 0                  
#s
#s
#s
#s******************************************* box plot ********************************************************************#
#s
#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rlbox128_8.eps"
#set yrange[0.95:1.05]
#set xtics rotate by -45
#slot "../model_and_formul/p128w100000000" using (2.0):($7/$15):(0.2):2 with boxplot t "10^8", 1.05, 0.95
#s
#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rlbox128_7.eps"
#set yrange [0.8:1.2]
#set xtics rotate by -45
#slot "../model_and_formul/p128w10000000" using (2.0):($7/$15):(0.2):2 with boxplot t "10^7", 1.05, 0.95
#s
#s
#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rlbox128_6.eps"
#set yrange [0.2:1.8]
#set xtics rotate by -45
#slot "../model_and_formul/p128w1000000" using (2.0):($7/$15):(0.2):2 with boxplot t "10^6", 1.05, 0.95
#s
#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rlbox128_5.eps"
#set yrange [0.2:1.8]
#set xtics rotate by -45
#slot "../model_and_formul/p128w100000" using (2.0):($7/$15):(0.2):2 with boxplot t "10^5", 1.05, 0.95
#s
#s
#s******************************************* box plot ********************************************************************#
#s
#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rlbox128_8.eps"
#set yrange[0.95:1.05]
#set xtics rotate by -45
#slot "../model_and_formul/p128w100000000" using (2.0):($7/$15):(0.2):2 with boxplot t "10^8", 1.05, 0.95
#s
#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rlbox128_7.eps"
#set yrange [0.8:1.2]
#set xtics rotate by -45
#slot "../model_and_formul/p128w10000000" using (2.0):($7/$15):(0.2):2 with boxplot t "10^7", 1.05, 0.95
#s
#s
#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rlbox128_6.eps"
#set yrange [0.2:1.8]
#set xtics rotate by -45
#slot "../model_and_formul/p128w1000000" using (2.0):($7/$15):(0.2):2 with boxplot t "10^6", 1.05, 0.95
#s
#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rlbox128_5.eps"
#set yrange [0.2:1.8]
#set xtics rotate by -45
#slot "../model_and_formul/p128w100000" using (2.0):($7/$15):(0.2):2 with boxplot t "10^5", 1.05, 0.95



#******************************************* box plot ********************************************************************#

#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rlbox32_8.eps"
#set yrange[0.95:1.05]
#set xtics rotate by -45
#slot "../model_and_formul/p32w100000000" using (2.0):($7/$15):(0.2):2 with boxplot t "10^8", 1.05, 0.95
#s
#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rlbox32_7.eps"
#set yrange [0.8:1.2]
#set xtics rotate by -45
#slot "../model_and_formul/p32w10000000" using (2.0):($7/$15):(0.2):2 with boxplot t "10^7", 1.05, 0.95
#s
#s
#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rlbox32_6.eps"
#set yrange [0.2:1.8]
#set xtics rotate by -45
#slot "../model_and_formul/p32w1000000" using (2.0):($7/$15):(0.2):2 with boxplot t "10^6", 1.05, 0.95
#s
#set output "../../../../../../Nos\ papier/A\ new\ analysis\ of\ work\ stealing\ with\ latency/figures/rlbox32_5.eps"
#set yrange [0.2:1.8]
#set xtics rotate by -45
#slot "../model_and_formul/p32w100000" using (2.0):($7/$15):(0.2):2 with boxplot t "10^5", 1.05, 0.95













