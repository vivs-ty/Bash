# 193. Create a robust error handling function that takes an error message and exit code.

#!/bin/bash

error_exit() {
    local message="$1"
    local exit_code="${2:-1}" # Defaults to 1 if no exit code is provided
    echo "CRITICAL ERROR: $message" >&2
    exit "$exit_code"
}

echo "Attempting to read a sensitive configuration file..."

# Example of using the function: If the cat command fails, trigger error_exit
cat /etc/shadow 2>/dev/null || error_exit "Failed to read configuration file. Permission denied." 2

echo "This line will never be reached because the script exits on the error."
