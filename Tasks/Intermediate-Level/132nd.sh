# 132. Implement a retry mechanism for a potentially failing command.

#!/bin/bash

MAX_RETRIES=3
RETRY_DELAY=2

retry_command() {
    local cmd="$1"
    local attempt=1
    
    while [ $attempt -le $MAX_RETRIES ]; do
        echo "Attempt $attempt of $MAX_RETRIES: Running '$cmd'"
        
        if eval "$cmd"; then
            echo "Command succeeded on attempt $attempt"
            return 0
        else
            echo "Command failed on attempt $attempt"
            if [ $attempt -lt $MAX_RETRIES ]; then
                echo "Waiting $RETRY_DELAY seconds before retry..."
                sleep $RETRY_DELAY
            fi
        fi
        
        attempt=$((attempt + 1))
    done
    
    echo "Command failed after $MAX_RETRIES attempts"
    return 1
}

echo "Testing retry mechanism with a failing command..."
retry_command "ls /nonexistent_directory_12345"

echo ""
echo "Testing retry mechanism with a successful command..."
retry_command "echo 'Success!'"