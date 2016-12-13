#!/bin/bash

num="0001-001"
for i in `\find . -maxdepth 1 -type f`; do 
	if [ `echo $i | grep '.jpeg'` ]; then
		i=${i:2}
		echo "the file is ${i}"	
		mv "$i" "$num.jpeg"
		IFS="-"
		set -- $num
		suffix=`expr $2 + 1`
		suffix=`printf %03d $suffix`
		num="${1}-${suffix}"
	fi
done
