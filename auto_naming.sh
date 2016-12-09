#!/bin/bash

 DIR=$1
 FILE_NUM_BERORE=0
 FILE_NAME=""
# get the number of files in the specified directory
get_file_number() {
	cd $DIR
	filenum=$(ls -U1 | wc -l)
} 

# get the file name of the current one
get_current_file_name() {
	file_name=$(ls -t | head -1)
}

# modify the file name based on the last modified name
add_one_to_last_modified() {
	latest_modified_file_name=$FILE_NAME
	# split the string by "-"
	IFS="-"
	set -- $latest_modified_file_name
	suffix=`expr $2 + 1`
	suffix=`printf %04d $suffix`
	new_file_name="${1}-${suffix}"
}


# only when the folder is updated somehow, the process below starts
if 
get_file_number
if [ filenum -ge FILE_NUM_BEFORE ] ; then
 	get_current_file_name
 	if [ filenum = FILE_NUM_BEFORE ] ; then
#  		change the current file name based on the user input
 	else 
  		if [ filenum = 1 ] ; then
  			FILE_NAME="0001-001"
   			mv file_name FILE_NAME
  		else
			add_one_to_last_modified
			mv file_name new_file_name
			FILE_NAME=new_file_name
		fi
	fi
fi



