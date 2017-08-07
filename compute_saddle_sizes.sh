#!/bin/bash


for i in $(seq 2 25) 27 30 50 100; do
	python2 saddle_size_percentage.py SymmetricRandomZeroSum/$i.txt
	python2 nasheq_size_percentage.py $i
	python2 transpose_data_file.py "${i}_rel.dat" >"${i}_rel_trans.dat"
done
