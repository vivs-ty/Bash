# 132. Implement a retry mechanism for a potentially failing command.

#!/bin/bash

MAX_RETRIES=3
RETRY_DELAY=2

retry_command() {
local attempt=1

while [ $attempt -le $MAX_RETRIES ]; do
    echo "Attempt $attempt of $MAX_RETRIES: Executing '$*'"
    
    if "$@"; then
        echo "Command succeeded on attempt $attempt."
        return 0
    else
        echo "Command failed on attempt $attempt."
        if [ $attempt -lt $MAX_RETRIES ]; then
            echo "Waiting for $RETRY_DELAY seconds before retrying..."
            sleep $RETRY_DELAY
        fi
    fi
    
    attempt=$((attempt + 1))
done

echo "Command failed permanently after $MAX_RETRIES attempts."
return 1
}

echo "Testing the retry mechanism with a command designed to fail..."
retry_command ls /nonexistent_directory_12345

echo ""
echo "Testing the retry mechanism with a command designed to succeed..."
retry_command echo "Success!"
