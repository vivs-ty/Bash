# 67. Create a script to monitor disk space and print a warning if it's below a certain threshold.

#!/bin/bash

THRESHOLD=80
USAGE=$(df / | tail -1 | awk '{gsub(/%/,""); print $5}')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "Warning: Disk usage is at $USAGE%. Less than $((100 - THRESHOLD))% free."
fi 
