# 89. Use `sed` to insert a line at the beginning of a file.


#!/bin/bash

echo "Inserting a line at the beginning of the file using sed..."
echo " use the command: sed -i '1i This is the new line.' /path/to/file.txt "
echo "Results:"
sed -i '1i This is the new line.' /path/to/file.txt 
