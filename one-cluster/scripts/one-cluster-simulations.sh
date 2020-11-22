#!/bin/bash

latency=$1
run=$2
filename=$3

echo "latency "$latency " run : "$run

for p in {32,64,128,256};
do
    for w in {100000,1000000,10000000,100000000}
    do
        ../../src/simulator.py -p $p -c 1 -iws $w -l $latency -r $run >> $filename-$p
    done
done

