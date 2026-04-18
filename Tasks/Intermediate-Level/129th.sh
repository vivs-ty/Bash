# 129. Use `if` statements to handle different scenarios based on command exit codes.

#!/bin/bash

echo "Using 'if' statements to handle different scenarios based on command exit codes."
echo "---------------------------------------------"

# By redirecting stdout and stderr to /dev/null, the terminal stays clean, 
# and the if statement purely acts on the hidden exit code.
if ls non_existent_file.txt > /dev/null 2>&1; then
    echo "The file exists."
else
    echo "The file does not exist (custom error handled gracefully)."
fi
