#!/bin/bash

prefix=$1
files=$(ls -UF | grep -v / )
for i in ${files} 
do
	mv "$i" "${prefix}_${i}_`date '+%Y%m%d'`"
done
