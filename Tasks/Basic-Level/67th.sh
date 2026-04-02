# 67. Create a script to monitor disk space and print a warning if it's below a certain threshold.

#!/bin/bash

# Set the threshold for disk space (in percentage)
THRESHOLD=20
# Get the current disk usage percentage
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

# Check if the disk usage is above the threshold
if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "Warning: Disk space is below $THRESHOLD%."
fi 
