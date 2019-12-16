#!/bin/bash
if [ ! -f pi.py ]; then
echo "no pi.py"
exit 1
elif [ $#  -eq 0 ]; then
echo "no trials specified"
exit 1
else
for nt in $*; do
	mkdir $nt
	cd $nt
	for i in {1..10}; do
		../pi.py $nt >> pi.out
	done
	cd ..
done
fi
