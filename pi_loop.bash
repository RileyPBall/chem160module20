#!/bin/bash
for i in $*
do
	echo "Ntrials=$i"
	python3 pi.py $i
done
