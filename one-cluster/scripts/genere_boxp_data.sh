#!/bin/bash

if [[ $# -ne 1 ]]; then
 echo "latency value missed, command must be like :"
 echo ""
 echo "  ~# genere_ratioWP.sh latencyValue"
 echo ""
 exit 0
fi



latency=$1

echo "transform data from wssimulator logs format to boxplot format"
echo "w = {100000, 1000000, 10000000, 100000000}"
echo "p = {32, 64, 128, 256}"
echo "latency = $latency"
echo "output is stored to ====> one-cluster/data/data-for-boxplot/output-bxp-latency-$latency"

for w in {100000,1000000,10000000,100000000}
do
    for p in {256,128,64,32}
    do
        awk -F ' ' '{if ($2 == '$latency' && $9== $w ) print $9/$8 " " $2 " \"10^5,"$8 "\" " $7 - $9/$8 " " (2*2*4.03*($2)*(log($9/(2*$2))/log(2))) " " 3.4*($2)*(log($9/(2*    $2))/log(2)) + 3*($2) }' ../data/data-from-simulator/fichier$p\_1000run >> ../data/data-for-boxplot/output-bxp-latency-$latency
    done
done

