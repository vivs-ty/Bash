# 140. Write a script that sends an email notification upon completion or failure.

#!/bin/bash

SCRIPT_NAME="deployment.sh"
EMAIL_TO="admin@example.com"
EMAIL_FROM="noreply@example.com"

send_email() {
    local subject="$1"
    local body="$2"
    
    if command -v mail &> /dev/null; then
        echo "$body" | mail -s "$subject" -r "$EMAIL_FROM" "$EMAIL_TO"
        echo "Email sent successfully to $EMAIL_TO"
    elif command -v sendmail &> /dev/null; then
        echo -e "To: $EMAIL_TO\nSubject: $subject\n\n$body" | sendmail -f "$EMAIL_FROM" "$EMAIL_TO"
        echo "Email sent via sendmail to $EMAIL_TO"
    else
        echo "Email not sent (mail command not available)"
        echo "Email would be sent to: $EMAIL_TO"
        echo "Subject: $subject"
        echo "Body:"
        echo "$body"
    fi
}

notify_success() {
    local message="$1"
    local timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    local subject="[SUCCESS] $SCRIPT_NAME completed"
    local body="Script: $SCRIPT_NAME
Status: SUCCESS
Timestamp: $timestamp
Message: $message

The script has completed successfully."
    
    send_email "$subject" "$body"
}

notify_failure() {
    local message="$1"
    local timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    local subject="[FAILURE] $SCRIPT_NAME failed"
    local body="Script: $SCRIPT_NAME
Status: FAILED
Timestamp: $timestamp
Message: $message

Please check the logs for details."
    
    send_email "$subject" "$body"
}

echo "=== Email Notification Demo ==="
echo

echo "Test 1: Sending success notification..."
notify_success "Backup completed successfully"

echo
echo "Test 2: Simulating a failure..."
notify_failure "Connection to database timed out"

echo
echo "Demo complete!"
