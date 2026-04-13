# 72. Find all files modified in the last 24 hours.

#!/bin/bash

echo "Finding all files modified in the last 24 hours..."
echo " use the command: find . -type f -mtime -1"
echo "Results:"
find . -type f -mtime -1
