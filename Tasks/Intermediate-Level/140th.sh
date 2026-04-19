# 140. Write a script that sends an email notification upon completion or failure.

#!/bin/bash

SCRIPT_NAME="deployment_pipeline.sh"
EMAIL_TO="admin@example.com"
EMAIL_FROM="noreply@example.com"

send_email() {
    local subject="$1"
    local body="$2"
    
    if command -v mail &> /dev/null; then
        echo "$body" | mail -s "$subject" -r "$EMAIL_FROM" "$EMAIL_TO"
        echo "Notification successfully routed to $EMAIL_TO via standard mail."
    elif command -v sendmail &> /dev/null; then
        echo -e "To: $EMAIL_TO\nSubject: $subject\n\n$body" | sendmail -f "$EMAIL_FROM" "$EMAIL_TO"
        echo "Notification successfully routed to $EMAIL_TO via sendmail."
    else
        echo "WARNING: The local mail utility is unavailable. Notification delivery bypassed."
        echo "--- Notification Draft Output ---"
        echo "Target Address: $EMAIL_TO"
        echo "Email Subject: $subject"
        echo "Email Payload:"
        echo "$body"
        echo "---------------------------------"
    fi
}

notify_success() {
    local message="$1"
    local timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    local subject="[SUCCESS] Execution Report: $SCRIPT_NAME"
    local body="Script Routine: $SCRIPT_NAME
Final Status: SUCCESS
Completion Time: $timestamp
System Message: $message

The specified script operations concluded without any errors."
    
    send_email "$subject" "$body"
}

notify_failure() {
    local message="$1"
    local timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    local subject="[CRITICAL FAILURE] Execution Report: $SCRIPT_NAME"
    local body="Script Routine: $SCRIPT_NAME
Final Status: FAILED
Failure Time: $timestamp
System Message: $message

Immediate attention is required. Please review the system logs for detailed error metrics."
    
    send_email "$subject" "$body"
}

echo "=== System Email Notification Utility ==="
echo

echo "Initiating Test Phase 1: Transmitting a success notification..."
notify_success "The routine daily database backup concluded successfully."

echo
echo "Initiating Test Phase 2: Simulating a critical failure notification..."
notify_failure "The connection to the primary backend database timed out."

echo
echo "Notification utility demonstration completed."
