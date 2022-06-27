#!/bin/sh

echo trial 14 seed 0
python3 train.py -trial 14 -seed 0 -frames 200000 -w_q1 10
echo trial 14 seed 1
python3 train.py -trial 14 -seed 1 -frames 200000 -w_q1 10
echo trial 14 seed 2
python3 train.py -trial 14 -seed 2 -frames 200000 -w_q1 10
echo trial 14 seed 3
python3 train.py -trial 14 -seed 3 -frames 200000 -w_q1 10
echo trial 14 seed 4
python3 train.py -trial 14 -seed 4 -frames 200000 -w_q1 10

echo trial 15 seed 0
python3 train.py -trial 15 -seed 0 -frames 200000 -w_q1 100
echo trial 15 seed 1
python3 train.py -trial 15 -seed 1 -frames 200000 -w_q1 100
echo trial 15 seed 2
python3 train.py -trial 15 -seed 2 -frames 200000 -w_q1 100
echo trial 15 seed 3
python3 train.py -trial 15 -seed 3 -frames 200000 -w_q1 100
echo trial 15 seed 4
python3 train.py -trial 15 -seed 4 -frames 200000 -w_q1 100

echo trial 16 seed 0
python3 train.py -trial 16 -seed 0 -frames 200000 -w_q1 1000
echo trial 16 seed 1
python3 train.py -trial 16 -seed 1 -frames 200000 -w_q1 1000
echo trial 16 seed 2
python3 train.py -trial 16 -seed 2 -frames 200000 -w_q1 1000
echo trial 16 seed 3
python3 train.py -trial 16 -seed 3 -frames 200000 -w_q1 1000
echo trial 16 seed 4
python3 train.py -trial 16 -seed 4 -frames 200000 -w_q1 1000

#echo trial 14 seed 0
#python3 train.py -trial 14 -seed 0 -frames 200000 -w_q1 100
#echo trial 14 seed 1
#python3 train.py -trial 14 -seed 1 -frames 200000 -w_q1 100
#echo trial 14 seed 2
#python3 train.py -trial 14 -seed 2 -frames 200000 -w_q1 100
#echo trial 14 seed 3
#python3 train.py -trial 14 -seed 3 -frames 200000 -w_q1 100
#echo trial 14 seed 4
#python3 train.py -trial 14 -seed 4 -frames 200000 -w_q1 100

#echo trial 15 seed 0
#python3 train.py -trial 15 -seed 0 -frames 200000 -w_q1 1000
#echo trial 15 seed 1
#python3 train.py -trial 15 -seed 1 -frames 200000 -w_q1 1000
#echo trial 15 seed 2
#python3 train.py -trial 15 -seed 2 -frames 200000 -w_q1 1000
#echo trial 15 seed 3
#python3 train.py -trial 15 -seed 3 -frames 200000 -w_q1 1000
#echo trial 15 seed 4
#python3 train.py -trial 15 -seed 4 -frames 200000 -w_q1 1000

python3 plot_graph.py --trial 14
python3 test.py -trial 14 -seed 0 -w_q1 10
python3 test.py -trial 14 -seed 1 -w_q1 10
python3 test.py -trial 14 -seed 2 -w_q1 10
python3 test.py -trial 14 -seed 3 -w_q1 10
python3 test.py -trial 14 -seed 4 -w_q1 10

python3 plot_graph.py --trial 15
python3 test.py -trial 15 -seed 0 -w_q1 100
python3 test.py -trial 15 -seed 1 -w_q1 100
python3 test.py -trial 15 -seed 2 -w_q1 100
python3 test.py -trial 15 -seed 3 -w_q1 100
python3 test.py -trial 15 -seed 4 -w_q1 100

python3 plot_graph.py --trial 16
python3 test.py -trial 16 -seed 0 -w_q1 1000
python3 test.py -trial 16 -seed 1 -w_q1 1000
python3 test.py -trial 16 -seed 2 -w_q1 1000
python3 test.py -trial 16 -seed 3 -w_q1 1000
python3 test.py -trial 16 -seed 4 -w_q1 1000

#python3 plot_graph.py --trial 14
#python3 test.py -trial 14 -seed 0 -w_q1 100
#python3 test.py -trial 14 -seed 1 -w_q1 100
#python3 test.py -trial 14 -seed 2 -w_q1 100
#python3 test.py -trial 14 -seed 3 -w_q1 100
#python3 test.py -trial 14 -seed 4 -w_q1 100

#python3 plot_graph.py --trial 15
#python3 test.py -trial 15 -seed 0 -w_q1 1000
#python3 test.py -trial 15 -seed 1 -w_q1 1000
#python3 test.py -trial 15 -seed 2 -w_q1 1000
#python3 test.py -trial 15 -seed 3 -w_q1 1000
#python3 test.py -trial 15 -seed 4 -w_q1 1000