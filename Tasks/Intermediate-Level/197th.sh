# 197. Write a script to automatically collect and report error logs.

#!/bin/bash

if [[ -z "$1" ]]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

LOG_FILE="$1"

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: Log file '$LOG_FILE' does not exist."
    exit 1
fi

echo "=== Error Report for $LOG_FILE ==="
echo "Generated at: $(date)"
echo "----------------------------------"

# Extract lines containing 'error', 'fail', or 'critical' case-insensitively
grep -iE "error|fail|critical" "$LOG_FILE"

if [ $? -ne 0 ]; then
    echo "No errors found in the log file. System looks healthy!"
fi
