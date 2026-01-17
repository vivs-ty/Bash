#!/bin/bash

echo "Enter the names of the files to create (separated by spaces):"
read -r -a file_names

echo "Creating files: ${file_names[*]}"
touch "${file_names[@]}"
