#!/bin/bash

files=$(ls -UF | grep -v /)
for i in ${files}
do
	rm -rf ${i}
done
