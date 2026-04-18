# 129. Use `if` statements to handle different scenarios based on command exit codes.

#!/bin/bash

echo "Using 'if' statements to handle different scenarios based on command exit codes."
echo "---------------------------------------------"
if ls non_existent_file.txt; then
    echo "The file exists."
else
    echo "The file does not exist."
fi
