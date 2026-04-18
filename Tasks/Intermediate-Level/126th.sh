# 126. Use `set -e` to make a script exit immediately on error.

#!/bin/bash

echo "Using 'set -e' to make the script exit immediately if any command fails."
echo "This means if any command returns a non-zero exit code, the script will stop executing."
echo "---------------------------------------------"
set -e
echo "This command will succeed."
ls non_existent_file.txt  # This command will fail and cause the script to exit immediately
echo "This command will not be executed due to the previous error."
