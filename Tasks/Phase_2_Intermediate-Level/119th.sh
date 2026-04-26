# 119. Use `.env` files and `source` them in a script.

#!/bin/bash

echo "Loading environment variables from .env file..."

if [ -f .env ]; then
    # Safely export variables, ignoring comments and handling spaces
    export $(grep -v '^#' .env | xargs)
    echo "Environment variables loaded successfully."
    
    # Just an example of how to check a variable that might have been in the file
    echo "Example check - DB_USER: $DB_USER"
else
    echo "Error: .env file not found in current directory."
fi
