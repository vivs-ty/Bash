# 191. Implement custom error messages and logging with timestamps.

#!/bin/bash

LOG_FILE="script.log"

# Function to log informational messages
log_info() {
    local timestamp=$(date +'%Y-%m-%d %H:%M:%S')
    echo "[$timestamp] INFO: $1" | tee -a "$LOG_FILE"
}

# Function to log error messages to stderr
log_error() {
    local timestamp=$(date +'%Y-%m-%d %H:%M:%S')
    echo "[$timestamp] ERROR: $1" | tee -a "$LOG_FILE" >&2
}

log_info "Script execution started."
echo "This is a normal message without a timestamp (Standard Output)."
log_error "Something went wrong during execution!"
log_info "Script execution finished."
