# 26. Search for lines containing "INFO" in `app.config` (case-insensitive).

#!/bin/bash

FILE="app.config"

if [ -f "$FILE" ]; then
    echo "Searching for 'INFO' in $FILE..."
    grep -i "INFO" "$FILE"
else
    echo "Error: $FILE does not exist."
fi