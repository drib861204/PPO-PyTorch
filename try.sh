#!/bin/sh

echo trial 3 seed 0
python3 train.py -trial 3 -seed 0 -frames 200000 -w_q1 1
echo trial 3 seed 1
python3 train.py -trial 3 -seed 1 -frames 200000 -w_q1 1
echo trial 3 seed 2
python3 train.py -trial 3 -seed 2 -frames 200000 -w_q1 1
echo trial 3 seed 3
python3 train.py -trial 3 -seed 3 -frames 200000 -w_q1 1
echo trial 3 seed 4
python3 train.py -trial 3 -seed 4 -frames 200000 -w_q1 1

echo trial 4 seed 0
python3 train.py -trial 4 -seed 0 -frames 200000 -w_q1 5
echo trial 4 seed 1
python3 train.py -trial 4 -seed 1 -frames 200000 -w_q1 5
echo trial 4 seed 2
python3 train.py -trial 4 -seed 2 -frames 200000 -w_q1 5
echo trial 4 seed 3
python3 train.py -trial 4 -seed 3 -frames 200000 -w_q1 5
echo trial 4 seed 4
python3 train.py -trial 4 -seed 4 -frames 200000 -w_q1 5

echo trial 5 seed 0
python3 train.py -trial 5 -seed 0 -frames 200000 -w_q1 10
echo trial 5 seed 1
python3 train.py -trial 5 -seed 1 -frames 200000 -w_q1 10
echo trial 5 seed 2
python3 train.py -trial 5 -seed 2 -frames 200000 -w_q1 10
echo trial 5 seed 3
python3 train.py -trial 5 -seed 3 -frames 200000 -w_q1 10
echo trial 5 seed 4
python3 train.py -trial 5 -seed 4 -frames 200000 -w_q1 10

echo trial 6 seed 0
python3 train.py -trial 6 -seed 0 -frames 200000 -w_q1 100
echo trial 6 seed 1
python3 train.py -trial 6 -seed 1 -frames 200000 -w_q1 100
echo trial 6 seed 2
python3 train.py -trial 6 -seed 2 -frames 200000 -w_q1 100
echo trial 6 seed 3
python3 train.py -trial 6 -seed 3 -frames 200000 -w_q1 100
echo trial 6 seed 4
python3 train.py -trial 6 -seed 4 -frames 200000 -w_q1 100

echo trial 7 seed 0
python3 train.py -trial 7 -seed 0 -frames 200000 -w_q1 1000
echo trial 7 seed 1
python3 train.py -trial 7 -seed 1 -frames 200000 -w_q1 1000
echo trial 7 seed 2
python3 train.py -trial 7 -seed 2 -frames 200000 -w_q1 1000
echo trial 7 seed 3
python3 train.py -trial 7 -seed 3 -frames 200000 -w_q1 1000
echo trial 7 seed 4
python3 train.py -trial 7 -seed 4 -frames 200000 -w_q1 1000

python3 plot_graph.py --trial 3
python3 test.py -trial 3 -seed 0 -w_q1 1
python3 test.py -trial 3 -seed 1 -w_q1 1
python3 test.py -trial 3 -seed 2 -w_q1 1
python3 test.py -trial 3 -seed 3 -w_q1 1
python3 test.py -trial 3 -seed 4 -w_q1 1

python3 plot_graph.py --trial 4
python3 test.py -trial 4 -seed 0 -w_q1 5
python3 test.py -trial 4 -seed 1 -w_q1 5
python3 test.py -trial 4 -seed 2 -w_q1 5
python3 test.py -trial 4 -seed 3 -w_q1 5
python3 test.py -trial 4 -seed 4 -w_q1 5

python3 plot_graph.py --trial 5
python3 test.py -trial 5 -seed 0 -w_q1 10
python3 test.py -trial 5 -seed 1 -w_q1 10
python3 test.py -trial 5 -seed 2 -w_q1 10
python3 test.py -trial 5 -seed 3 -w_q1 10
python3 test.py -trial 5 -seed 4 -w_q1 10

python3 plot_graph.py --trial 6
python3 test.py -trial 6 -seed 0 -w_q1 100
python3 test.py -trial 6 -seed 1 -w_q1 100
python3 test.py -trial 6 -seed 2 -w_q1 100
python3 test.py -trial 6 -seed 3 -w_q1 100
python3 test.py -trial 6 -seed 4 -w_q1 100

python3 plot_graph.py --trial 7
python3 test.py -trial 7 -seed 0 -w_q1 1000
python3 test.py -trial 7 -seed 1 -w_q1 1000
python3 test.py -trial 7 -seed 2 -w_q1 1000
python3 test.py -trial 7 -seed 3 -w_q1 1000
python3 test.py -trial 7 -seed 4 -w_q1 1000