#!/bin/bash
for file in $1/*
do
	echo $file
	if test -f $file
	then
		sox -t raw -c 1 -e signed-integer -b 16 -r 16000 $file $file.wav
	else
		continue
	fi
done
