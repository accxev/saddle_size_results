#!/bin/bash


for i in $(seq 2 25); do
	python2 saddle_size_percentage.py SymmetricRandomZeroSum/$i.txt
	python2 nasheq_size_percentage.py $i
done

	python2 saddle_size_percentage.py SymmetricRandomZeroSum/27.txt
	python2 nasheq_size_percentage.py 27
	python2 saddle_size_percentage.py SymmetricRandomZeroSum/30.txt
	python2 nasheq_size_percentage.py 30
	python2 saddle_size_percentage.py SymmetricRandomZeroSum/50.txt
	python2 nasheq_size_percentage.py 50
	python2 saddle_size_percentage.py SymmetricRandomZeroSum/100.txt
	python2 nasheq_size_percentage.py 100
