# 128. Implement basic error checking in a script (e.g., checking if a command succeeded).

#!/bin/bash

echo "Simulating basic error checking by attempting to create a directory named 'test_dir':"
echo "command used for creating directory : mkdir test_dir"
echo "---------------------------------------------"

# Redirect stderr to /dev/null to hide system errors; we handle the error message ourselves
mkdir test_dir 2>/dev/null

if [ $? -eq 0 ]; then
echo "Directory 'test_dir' created successfully."
else
echo "Failed to create directory 'test_dir'. It may already exist or there may be permission issues."
fi
