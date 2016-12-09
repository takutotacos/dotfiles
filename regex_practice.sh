#!/bin/bash



echo "START"

if [[ $1 =~ ^[0-9]{4}-[0-9]$ ]]; then
	echo "TRUE"
else
	echo "FALSE"
fi
