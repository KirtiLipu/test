#!/bin/bash

read -p "Please enter a filename to search in the current directory: " FILE

echo "The file name you entered is: $FILE"

if [ -e $FILE ]; then
    echo "File Exist"
else
    echi "File doesn't exist"
fi

echo "This is end of the shell script"