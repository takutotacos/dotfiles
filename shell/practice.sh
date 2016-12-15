#!/bin/bash

expr "-0001" + 1 >/dev/null 2>&1
if [ $? -lt 2 ]; then
	echo "Numeric"
else
	echo "not Numeric"
fi
