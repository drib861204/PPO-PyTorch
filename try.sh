#!/bin/sh

echo trial 11 seed 0
python3 train.py -trial 11 -seed 0 -frames 200000 -w_q1 10
echo trial 11 seed 1
python3 train.py -trial 11 -seed 1 -frames 200000 -w_q1 10
echo trial 11 seed 2
python3 train.py -trial 11 -seed 2 -frames 200000 -w_q1 10
echo trial 11 seed 3
python3 train.py -trial 11 -seed 3 -frames 200000 -w_q1 10
echo trial 11 seed 4
python3 train.py -trial 11 -seed 4 -frames 200000 -w_q1 10

echo trial 12 seed 0
python3 train.py -trial 12 -seed 0 -frames 200000 -w_q1 100
echo trial 12 seed 1
python3 train.py -trial 12 -seed 1 -frames 200000 -w_q1 100
echo trial 12 seed 2
python3 train.py -trial 12 -seed 2 -frames 200000 -w_q1 100
echo trial 12 seed 3
python3 train.py -trial 12 -seed 3 -frames 200000 -w_q1 100
echo trial 12 seed 4
python3 train.py -trial 12 -seed 4 -frames 200000 -w_q1 100

echo trial 13 seed 0
python3 train.py -trial 13 -seed 0 -frames 200000 -w_q1 1000
echo trial 13 seed 1
python3 train.py -trial 13 -seed 1 -frames 200000 -w_q1 1000
echo trial 13 seed 2
python3 train.py -trial 13 -seed 2 -frames 200000 -w_q1 1000
echo trial 13 seed 3
python3 train.py -trial 13 -seed 3 -frames 200000 -w_q1 1000
echo trial 13 seed 4
python3 train.py -trial 13 -seed 4 -frames 200000 -w_q1 1000

#echo trial 11 seed 0
#python3 train.py -trial 11 -seed 0 -frames 200000 -w_q1 100
#echo trial 11 seed 1
#python3 train.py -trial 11 -seed 1 -frames 200000 -w_q1 100
#echo trial 11 seed 2
#python3 train.py -trial 11 -seed 2 -frames 200000 -w_q1 100
#echo trial 11 seed 3
#python3 train.py -trial 11 -seed 3 -frames 200000 -w_q1 100
#echo trial 11 seed 4
#python3 train.py -trial 11 -seed 4 -frames 200000 -w_q1 100

#echo trial 12 seed 0
#python3 train.py -trial 12 -seed 0 -frames 200000 -w_q1 1000
#echo trial 12 seed 1
#python3 train.py -trial 12 -seed 1 -frames 200000 -w_q1 1000
#echo trial 12 seed 2
#python3 train.py -trial 12 -seed 2 -frames 200000 -w_q1 1000
#echo trial 12 seed 3
#python3 train.py -trial 12 -seed 3 -frames 200000 -w_q1 1000
#echo trial 12 seed 4
#python3 train.py -trial 12 -seed 4 -frames 200000 -w_q1 1000

python3 plot_graph.py --trial 11
python3 test.py -trial 11 -seed 0 -w_q1 10
python3 test.py -trial 11 -seed 1 -w_q1 10
python3 test.py -trial 11 -seed 2 -w_q1 10
python3 test.py -trial 11 -seed 3 -w_q1 10
python3 test.py -trial 11 -seed 4 -w_q1 10

python3 plot_graph.py --trial 12
python3 test.py -trial 12 -seed 0 -w_q1 100
python3 test.py -trial 12 -seed 1 -w_q1 100
python3 test.py -trial 12 -seed 2 -w_q1 100
python3 test.py -trial 12 -seed 3 -w_q1 100
python3 test.py -trial 12 -seed 4 -w_q1 100

python3 plot_graph.py --trial 13
python3 test.py -trial 13 -seed 0 -w_q1 1000
python3 test.py -trial 13 -seed 1 -w_q1 1000
python3 test.py -trial 13 -seed 2 -w_q1 1000
python3 test.py -trial 13 -seed 3 -w_q1 1000
python3 test.py -trial 13 -seed 4 -w_q1 1000

#python3 plot_graph.py --trial 11
#python3 test.py -trial 11 -seed 0 -w_q1 100
#python3 test.py -trial 11 -seed 1 -w_q1 100
#python3 test.py -trial 11 -seed 2 -w_q1 100
#python3 test.py -trial 11 -seed 3 -w_q1 100
#python3 test.py -trial 11 -seed 4 -w_q1 100

#python3 plot_graph.py --trial 12
#python3 test.py -trial 12 -seed 0 -w_q1 1000
#python3 test.py -trial 12 -seed 1 -w_q1 1000
#python3 test.py -trial 12 -seed 2 -w_q1 1000
#python3 test.py -trial 12 -seed 3 -w_q1 1000
#python3 test.py -trial 12 -seed 4 -w_q1 1000