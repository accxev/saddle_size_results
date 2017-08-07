#!/bin/bash


for i in $(seq 2 20); do
	python2 saddle_size_percentage.py ConfrontationGame/counters/$i.txt
	python2 nasheq_size_percentage.py $i
done
