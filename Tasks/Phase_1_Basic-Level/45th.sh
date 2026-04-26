# 45. Create a `for` loop to process all `.log` files in the current directory.

#!/bin/bash

shopt -s nullglob
log_files=(*.log)

if [ ${#log_files[@]} -eq 0 ]; then
    echo "No .log files found in the current directory."
    exit 0
fi

for logfile in "${log_files[@]}"; do
    echo "Scanning $logfile for errors..."
    # Add processing logic here
done
