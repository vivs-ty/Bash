# 77. Delete all blank lines from a text file.

#!/bin/bash

echo "Deleting all blank lines from the text file..."
echo " use the command: sed -i '/^$/d' /path/to/file.txt "
echo "Results:"
sed -i '/^$/d' /path/to/file.txt
# Note: If running on macOS, use: sed -i '' '/^$/d' /path/to/file.txt

