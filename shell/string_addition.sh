#!/bin/bash

file="0001-0043"
echo "File name is ${file}" 

# split the string by "-"
IFS="-"
set -- $file
suffix=`expr $2 + 1`
suffix=`printf %04d $suffix`
echo "Modified file name is: ${1}-${suffix}"
