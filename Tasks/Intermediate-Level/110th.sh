# 110. Create a script that checks if a cron job ran successfully by examining its log file.

#!/bin/bash

# Define the log file path
LOG_FILE="/var/log/cron.log"
# Check if the log file exists
if [[ ! -f "$LOG_FILE" ]]; then
    echo "Log file not found: $LOG_FILE"
    exit 1
fi
