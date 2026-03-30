# 25. Search for the word "error" in `server.log`.

#!/bin/bash

FILE="server.log"

if [ -f "$FILE" ]; then
    echo "Enter the keyword you want to find:"
    echo "Example: error"
    read -r search_term

    echo "--- Search Results ---"
    grep -i "$search_term" "$FILE"
else
    echo "Error: $FILE not found."
fi