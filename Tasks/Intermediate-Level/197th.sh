# 197. Write a script to automatically collect and report error logs.

#!/bin/bash

echo "This script collects error logs from a specified log file and generates a report."
# Check if a log file is provided as an argument
if [[ -z "$1" ]]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

log_file="$1"

# Collect error logs
echo "Error logs from $log_file:"
grep -i "error" "$log_file"
