#!/bin/bash

# get the file name of the current one
get_current_file_name() {
	file_name=$(ls -t | head -1)
}

# modify the file name based on the last modified name
add_one_to_last_modified() {
	second_latest=$(ls -t | head -2| tail -n 1)
	# split the string by "-"
	IFS="-"
	set -- $second_latest
	suffix=`expr $2 + 1`
	suffix=`printf %03d $suffix`
	new_file_name="${1}-${suffix}"
}

# only when the folder is updated somehow, the process below starts
naming_file() {	
 	get_current_file_name
	if [[ $file_name =~ ^[0-9]{4}-[0-9]{3}$ ]]; then
		# File deleted
	else
		if [[ $file_name =~ ^[0-9]{1,4}$ ]]; then
			# File renamed
			FILE_NAME=`printf %04d $file_name`
			FILE_NAME="${FILE_NAME}-001"
 		else 
			# File added
			filenum=$(ls -U1 | wc -l)
 			if [ $filenum = 1 ] ; then
  				FILE_NAME="0001-001"
  			else
				add_one_to_last_modified
				FILE_NAME=$new_file_name
			fi
		fi
   		mv "$file_name" "$FILE_NAME"
	fi
}
naming_file
