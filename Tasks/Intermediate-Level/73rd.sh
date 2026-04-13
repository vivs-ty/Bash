# 73. Find and delete all `.tmp` files recursively. (Use with extreme caution!)

#!bin/bash

echo "Finding and deleting all .tmp files recursively..."
echo " use the command: find . -type f -name '*.tmp' -delete"
echo "Results:"
find . -type f -name '*.tmp' -delete
