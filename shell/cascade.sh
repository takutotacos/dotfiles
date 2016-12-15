#!/bin/bash


ls -lr
for file in `find . -maxdepth 1 -type f`; do
	if [[ $file =~ ^sample_[0-9]{3}$ ]]; then
		IFS="-"
		set $file
		suffix=`expr $2 + 1`
		new_file_name="${1}-${suffix}"
		mv "${file}" "${new_file_name}"
	else
		echo "target file ${file}"
	fi

done

