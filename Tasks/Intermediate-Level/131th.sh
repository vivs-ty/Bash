# 131. Create a script that logs errors to a separate log file.

#!/bin/bash

LOG_FILE="script.log"
ERROR_LOG="error.log"

log_message() {
    local message="$1"
    local timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    echo "[$timestamp] $message" >> "$LOG_FILE"
}

log_error() {
    local message="$1"
    local timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    echo "[$timestamp] ERROR: $message" >> "$ERROR_LOG"
    echo "[$timestamp] ERROR: $message" >> "$LOG_FILE"
}

echo "Initializing script with error logging enabled..."

log_message "Script execution started."

if [ ! -d "/tmp" ]; then
    log_error "The /tmp directory does not exist."
    exit 1
fi

log_message "Verified that the /tmp directory exists."
log_message "Script execution completed successfully."

echo "Script completed. Please review $LOG_FILE and $ERROR_LOG for detailed logs."
