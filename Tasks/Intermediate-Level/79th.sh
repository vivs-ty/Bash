# 79. Calculate the total size of all files in a directory using `du` and `awk`.

#!/bin/bash

echo "Calculating the total size of all files in the current directory..."
echo " use the command: du -sh . | awk '{print $1}'"
echo "Results:"
du -sh . | awk '{print $1}' 