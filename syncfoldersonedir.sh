#!/bin/bash
# Syncing directories
# one direction sync Dir1 --> Dir2

Dir1=$1
Dir2=$2

if [ $Dir1 -nt $Dir2 ]; then
	rsync -avu $Dir1 $Dir2
else
	Warning: $Dir2 has been changed later than $Dir1
	echo "Are you sure that you want to sync it? (y/n)"
	read Answer
	if [ Answer = "y" ]; then
		rsync -avu $Dir1 $Dir2
	fi
fi
	
exit 0

