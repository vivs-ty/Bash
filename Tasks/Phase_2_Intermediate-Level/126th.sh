# 126. Use `set -e` to make a script exit immediately on error.

#!/bin/bash

echo "Using 'set -e' to make the script exit immediately if any command fails."
echo "This means if any command returns a non-zero exit code, the script will stop executing."
echo "---------------------------------------------"
set -e
echo "This command will succeed."

# Redirecting stderr to /dev/null to hide the system error, but the exit code will still be caught by set -e
ls non_existent_file.txt 2>/dev/null

echo "This command will NOT be executed due to the previous error."
