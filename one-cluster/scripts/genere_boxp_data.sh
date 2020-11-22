#!/bin/bash

if [[ $# -ne 3 ]]; then
 echo "ERROR ARGUMENTS, command must be like :"
 echo ""
 echo "  ~# genere_ratioWP.sh latencyValue inputfilename outputfile"
 echo ""
 exit 0
fi



latency=$1
inputfilename=$2
outputfilename=$3

echo "transform data from wssimulator logs format to boxplot format"
echo "w = {100000, 1000000, 10000000, 100000000}"
echo "p = {32, 64, 128, 256}"
echo "latency = $latency"

rm $outputfilename-boxp-$latency 


w1=100000
w2="10^5"
for p in {256,128,64,32}
do
    awk -F ' ' '{if ($2 == '$latency' && $5== '$w1' ) print $5/$4 " " $2 " \"'$w2',"$4 "\" " $3 - $5/$4 " " (2*2*4.03*($2)*(log($5/(2*$2))/log(2))) " " 3.4*($2)*(log($5/(2*$2))/log(2)) + 3*($2) }' $inputfilename-$p >> $outputfilename-boxp-$latency
done



w1=1000000
w2="10^6"
for p in {256,128,64,32}
do
    awk -F ' ' '{if ($2 == '$latency' && $5== '$w1' ) print $5/$4 " " $2 " \"'$w2',"$4 "\" " $3 - $5/$4 " " (2*2*4.03*($2)*(log($5/(2*$2))/log(2))) " " 3.4*($2)*(log($5/(2*$2))/log(2)) + 3*($2) }' $inputfilename-$p >> $outputfilename-boxp-$latency
done



w1=10000000
w2="10^7"
for p in {256,128,64,32}
do
    awk -F ' ' '{if ($2 == '$latency' && $5== '$w1' ) print $5/$4 " " $2 " \"'$w2',"$4 "\" " $3 - $5/$4 " " (2*2*4.03*($2)*(log($5/(2*$2))/log(2))) " " 3.4*($2)*(log($5/(2*$2))/log(2)) + 3*($2) }' $inputfilename-$p >> $outputfilename-boxp-$latency
done



w1=100000000
w2="10^8"
for p in {256,128,64,32}
do
    awk -F ' ' '{if ($2 == '$latency' && $5== '$w1' ) print $5/$4 " " $2 " \"'$w2',"$4 "\" " $3 - $5/$4 " " (2*2*4.03*($2)*(log($5/(2*$2))/log(2))) " " 3.4*($2)*(log($5/(2*$2))/log(2)) + 3*($2) }' $inputfilename-$p >> $outputfilename-boxp-$latency
done


echo "output is stored to ====> " $outputfilename"-boxp-"$latency
