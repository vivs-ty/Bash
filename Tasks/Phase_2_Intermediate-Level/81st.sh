# 81. Remove duplicate lines from a file.

#!/bin/bash

echo "Removing duplicate lines from the file..."
echo " use the command: sort -u /path/to/file.txt -o /path/to/file.txt "
echo "Results:"
sort -u /path/to/file.txt -o /path/to/file.txt
# Sort must be used first because `uniq` only removes adjacent duplicates. 
# `sort -u` accomplishes both sorting and removing duplicates.