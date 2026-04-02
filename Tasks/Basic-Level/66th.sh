# 66. Create a script that backs up all `.conf` files in a directory to a `backup` subdirectory.

#!/bin/bash

# Create backup directory if it doesn't exist
mkdir -p backup

# Copy all .conf files to the backup directory
cp *.conf backup/ 2>/dev/null
# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
else
    echo "No .conf files found to backup."
fi
