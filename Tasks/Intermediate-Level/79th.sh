# 79. Calculate the total size of all files in a directory using `du` and `awk`.

#!/bin/bash

echo "Calculating the total size of all files in the current directory..."
echo " use the command: du -a . | awk '{sum += $1} END {print sum}'"
echo "Results:"
du -a . | awk '{sum += $1} END {print sum}' 