#!/bin/sh

echo trial 17 seed 0
python3 train.py -trial 17 -seed 0 -frames 200000 -lr_a 0.0003
echo trial 17 seed 1
python3 train.py -trial 17 -seed 1 -frames 200000 -lr_a 0.0003
echo trial 17 seed 2
python3 train.py -trial 17 -seed 2 -frames 200000 -lr_a 0.0003
echo trial 17 seed 3
python3 train.py -trial 17 -seed 3 -frames 200000 -lr_a 0.0003
echo trial 17 seed 4
python3 train.py -trial 17 -seed 4 -frames 200000 -lr_a 0.0003

echo trial 18 seed 0
python3 train.py -trial 18 -seed 0 -frames 200000 -lr_a 0.001
echo trial 18 seed 1
python3 train.py -trial 18 -seed 1 -frames 200000 -lr_a 0.001
echo trial 18 seed 2
python3 train.py -trial 18 -seed 2 -frames 200000 -lr_a 0.001
echo trial 18 seed 3
python3 train.py -trial 18 -seed 3 -frames 200000 -lr_a 0.001
echo trial 18 seed 4
python3 train.py -trial 18 -seed 4 -frames 200000 -lr_a 0.001

echo trial 19 seed 0
python3 train.py -trial 19 -seed 0 -frames 200000 -lr_a 0.01
echo trial 19 seed 1
python3 train.py -trial 19 -seed 1 -frames 200000 -lr_a 0.01
echo trial 19 seed 2
python3 train.py -trial 19 -seed 2 -frames 200000 -lr_a 0.01
echo trial 19 seed 3
python3 train.py -trial 19 -seed 3 -frames 200000 -lr_a 0.01
echo trial 19 seed 4
python3 train.py -trial 19 -seed 4 -frames 200000 -lr_a 0.01

python3 plot_graph.py --trial 17
python3 test.py -trial 17 -seed 0
python3 test.py -trial 17 -seed 1
python3 test.py -trial 17 -seed 2
python3 test.py -trial 17 -seed 3
python3 test.py -trial 17 -seed 4

python3 plot_graph.py --trial 18
python3 test.py -trial 18 -seed 0
python3 test.py -trial 18 -seed 1
python3 test.py -trial 18 -seed 2
python3 test.py -trial 18 -seed 3
python3 test.py -trial 18 -seed 4

python3 plot_graph.py --trial 19
python3 test.py -trial 19 -seed 0
python3 test.py -trial 19 -seed 1
python3 test.py -trial 19 -seed 2
python3 test.py -trial 19 -seed 3
python3 test.py -trial 19 -seed 4
