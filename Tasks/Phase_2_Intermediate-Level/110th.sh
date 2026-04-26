# 110. Create a script that checks if a cron job ran successfully by examining its log file.

#!/bin/bash

# Define the log file path
LOG_FILE="/var/log/cron.log"

# Check if the log file exists
if [[ ! -f "$LOG_FILE" ]]; then
    echo "Log file not found: $LOG_FILE"
    exit 1
fi

# Examine the log for the word "error" or "failed" (case-insensitive)
if grep -iE "error|failed" "$LOG_FILE" > /dev/null; then
    echo "WARNING: Errors found in the cron log!"
    # Display the last 5 errors
    grep -iE "error|failed" "$LOG_FILE" | tail -n 5
else
    echo "SUCCESS: No errors found in the cron log."
fi