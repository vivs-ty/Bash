# 199. Create a library of common functions for string manipulation, file operations, and API interactions in separate `.sh` files and source them in your main scripts.

#!/bin/bash
echo "This is a placeholder for the 199th task. Please implement the required functionality as described in the task."

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$DIR/lib/string_utils.sh"
source "$DIR/lib/file_utils.sh"
source "$DIR/lib/api_utils.sh"

echo "=== Testing String Utils ==="
RAW_STR="   Hello BASH World   "
TRIMMED=$(str_trim "$RAW_STR")
LOWER=$(str_to_lower "$TRIMMED")
echo "Original: '$RAW_STR'"
echo "Trimmed:  '$TRIMMED'"
echo "Lower:    '$LOWER'"
echo

echo "=== Testing File Utils ==="
TEST_FILE="$DIR/main.sh"
if file_exists "$TEST_FILE"; then
    SIZE=$(file_size "$TEST_FILE")
    echo "File '$TEST_FILE' exists. Size: $SIZE bytes."
else
    echo "File not found!"
fi
echo

echo "=== Testing API Utils ==="
echo "Fetching mock user data..."
RESPONSE=$(api_get "https://jsonplaceholder.typicode.com/users/1")
NAME=$(echo "$RESPONSE" | grep -o '"name": "[^"]*' | cut -d'"' -f4)
echo "Fetched User: $NAME"

