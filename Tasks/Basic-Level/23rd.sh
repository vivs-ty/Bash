#!/bin/bash

echo "Please enter the file name:"
read file_name

# 'head' shows the top of the file
tail -n 5 "$file_name"
