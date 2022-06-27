#!/bin/sh

echo trial 20 seed 0
python3 train.py -trial 20 -seed 0 -frames 200000 -lr_a 0.0003
echo trial 20 seed 1
python3 train.py -trial 20 -seed 1 -frames 200000 -lr_a 0.0003
echo trial 20 seed 2
python3 train.py -trial 20 -seed 2 -frames 200000 -lr_a 0.0003
echo trial 20 seed 3
python3 train.py -trial 20 -seed 3 -frames 200000 -lr_a 0.0003
echo trial 20 seed 4
python3 train.py -trial 20 -seed 4 -frames 200000 -lr_a 0.0003

#echo trial 21 seed 0
#python3 train.py -trial 21 -seed 0 -frames 200000 -lr_a 0.001
#echo trial 21 seed 1
#python3 train.py -trial 21 -seed 1 -frames 200000 -lr_a 0.001
#echo trial 21 seed 2
#python3 train.py -trial 21 -seed 2 -frames 200000 -lr_a 0.001
#echo trial 21 seed 3
#python3 train.py -trial 21 -seed 3 -frames 200000 -lr_a 0.001
#echo trial 21 seed 4
#python3 train.py -trial 21 -seed 4 -frames 200000 -lr_a 0.001

#echo trial 22 seed 0
#python3 train.py -trial 22 -seed 0 -frames 200000 -lr_a 0.01
#echo trial 22 seed 1
#python3 train.py -trial 22 -seed 1 -frames 200000 -lr_a 0.01
#echo trial 22 seed 2
#python3 train.py -trial 22 -seed 2 -frames 200000 -lr_a 0.01
#echo trial 22 seed 3
#python3 train.py -trial 22 -seed 3 -frames 200000 -lr_a 0.01
#echo trial 22 seed 4
#python3 train.py -trial 22 -seed 4 -frames 200000 -lr_a 0.01

python3 plot_graph.py --trial 20
python3 test.py -trial 20 -seed 0
python3 test.py -trial 20 -seed 1
python3 test.py -trial 20 -seed 2
python3 test.py -trial 20 -seed 3
python3 test.py -trial 20 -seed 4

#python3 plot_graph.py --trial 21
#python3 test.py -trial 21 -seed 0
#python3 test.py -trial 21 -seed 1
#python3 test.py -trial 21 -seed 2
#python3 test.py -trial 21 -seed 3
#python3 test.py -trial 21 -seed 4

#python3 plot_graph.py --trial 22
#python3 test.py -trial 22 -seed 0
#python3 test.py -trial 22 -seed 1
#python3 test.py -trial 22 -seed 2
#python3 test.py -trial 22 -seed 3
#python3 test.py -trial 22 -seed 4
