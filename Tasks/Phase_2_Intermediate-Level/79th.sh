# 79. Calculate the total size of all files in a directory using `du` and `awk`.

#!/bin/bash

echo "Calculating the total size of all files in the current directory..."
echo " use the command: find . -type f -exec du -b {} + | awk '{sum += $1} END {print sum}'"
echo "Results:"
find . -type f -exec du -b {} + | awk '{sum += $1} END {print sum}' 
# Using `find` prevents `du` from double-counting the directories themselves.
