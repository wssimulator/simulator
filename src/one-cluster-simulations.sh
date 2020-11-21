#!/bin/bash

latency=$1
run=$2

echo "latency "$latency " run : "$run

for p in {32,64,128,256};
do
    ./simulator.py -p $p -c 1 -iwsconf 100000 100000000 10 -l $latency -r $run > ../one-cluster/data/data-from-simulator/results-latency-$latency
done

