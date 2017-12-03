#!/bin/bash
>$2
for file in $1/*.wav
do
	echo $file
	if test -f $file
	then
		echo $file >> $2
	else
		continue
	fi
done
