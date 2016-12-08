#!/bin/bash

 DIR=$1
 echo $DIR 
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

#get_file_number
#if filenum >= FILE_NUM_BEFORE
# get_current_file_name
# if filenum == FILE_NUM_BEFORE
#  change the current file name based on the user input
# else 
#  if filenum == 1
#   FILE_NAME="0001-001"
#   mv file_name FILE_NAME
#  else
#   add 1 to the file last modified
#fi



