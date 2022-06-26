#!/bin/sh

echo trial 8 seed 0
python3 train.py -trial 8 -seed 0 -frames 200000 -w_q1 10
echo trial 8 seed 1
python3 train.py -trial 8 -seed 1 -frames 200000 -w_q1 10
echo trial 8 seed 2
python3 train.py -trial 8 -seed 2 -frames 200000 -w_q1 10
echo trial 8 seed 3
python3 train.py -trial 8 -seed 3 -frames 200000 -w_q1 10
echo trial 8 seed 4
python3 train.py -trial 8 -seed 4 -frames 200000 -w_q1 10

echo trial 9 seed 0
python3 train.py -trial 9 -seed 0 -frames 200000 -w_q1 100
echo trial 9 seed 1
python3 train.py -trial 9 -seed 1 -frames 200000 -w_q1 100
echo trial 9 seed 2
python3 train.py -trial 9 -seed 2 -frames 200000 -w_q1 100
echo trial 9 seed 3
python3 train.py -trial 9 -seed 3 -frames 200000 -w_q1 100
echo trial 9 seed 4
python3 train.py -trial 9 -seed 4 -frames 200000 -w_q1 100

echo trial 10 seed 0
python3 train.py -trial 10 -seed 0 -frames 200000 -w_q1 1000
echo trial 10 seed 1
python3 train.py -trial 10 -seed 1 -frames 200000 -w_q1 1000
echo trial 10 seed 2
python3 train.py -trial 10 -seed 2 -frames 200000 -w_q1 1000
echo trial 10 seed 3
python3 train.py -trial 10 -seed 3 -frames 200000 -w_q1 1000
echo trial 10 seed 4
python3 train.py -trial 10 -seed 4 -frames 200000 -w_q1 1000

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

python3 plot_graph.py --trial 8
python3 test.py -trial 8 -seed 0 -w_q1 10
python3 test.py -trial 8 -seed 1 -w_q1 10
python3 test.py -trial 8 -seed 2 -w_q1 10
python3 test.py -trial 8 -seed 3 -w_q1 10
python3 test.py -trial 8 -seed 4 -w_q1 10

python3 plot_graph.py --trial 9
python3 test.py -trial 9 -seed 0 -w_q1 100
python3 test.py -trial 9 -seed 1 -w_q1 100
python3 test.py -trial 9 -seed 2 -w_q1 100
python3 test.py -trial 9 -seed 3 -w_q1 100
python3 test.py -trial 9 -seed 4 -w_q1 100

python3 plot_graph.py --trial 10
python3 test.py -trial 10 -seed 0 -w_q1 1000
python3 test.py -trial 10 -seed 1 -w_q1 1000
python3 test.py -trial 10 -seed 2 -w_q1 1000
python3 test.py -trial 10 -seed 3 -w_q1 1000
python3 test.py -trial 10 -seed 4 -w_q1 1000

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