#!/bin/sh

echo trial 0 seed 0
python3 train.py -trial 0 -seed 0 -frames 200000 -w_q1 10
echo trial 0 seed 1
python3 train.py -trial 0 -seed 1 -frames 200000 -w_q1 10
echo trial 0 seed 2
python3 train.py -trial 0 -seed 2 -frames 200000 -w_q1 10
echo trial 0 seed 3
python3 train.py -trial 0 -seed 3 -frames 200000 -w_q1 10
echo trial 0 seed 4
python3 train.py -trial 0 -seed 4 -frames 200000 -w_q1 10

echo trial 1 seed 0
python3 train.py -trial 1 -seed 0 -frames 200000 -w_q1 100
echo trial 1 seed 1
python3 train.py -trial 1 -seed 1 -frames 200000 -w_q1 100
echo trial 1 seed 2
python3 train.py -trial 1 -seed 2 -frames 200000 -w_q1 100
echo trial 1 seed 3
python3 train.py -trial 1 -seed 3 -frames 200000 -w_q1 100
echo trial 1 seed 4
python3 train.py -trial 1 -seed 4 -frames 200000 -w_q1 100

echo trial 2 seed 0
python3 train.py -trial 2 -seed 0 -frames 200000 -w_q1 1000
echo trial 2 seed 1
python3 train.py -trial 2 -seed 1 -frames 200000 -w_q1 1000
echo trial 2 seed 2
python3 train.py -trial 2 -seed 2 -frames 200000 -w_q1 1000
echo trial 2 seed 3
python3 train.py -trial 2 -seed 3 -frames 200000 -w_q1 1000
echo trial 2 seed 4
python3 train.py -trial 2 -seed 4 -frames 200000 -w_q1 1000
