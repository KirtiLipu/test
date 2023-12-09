#!/bin/bash

#..........
#Author : Kirtiranjan Sahoo
#Date: 30/11/2023

#Description: Here is how to write the shell script"
#
#Usage: 
# ./file.sh parm1
#...........
#Version: 2.0.1

read -p "Please enter a filename to search in the current directory: " FILE

echo "The file name you entered is: $FILE"

if [ -e $FILE ]; then
    echo "File Exist"
else
    echi "File doesn't exist"
fi

echo "This is end of the shell script"