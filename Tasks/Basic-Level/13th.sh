#!/bin/bash

echo -e "Enter the names of the file to create (separated by spaces): "
read -r file_name # filename - server.log

echo -e "Creating files: $file_name\n"
touch $file_name