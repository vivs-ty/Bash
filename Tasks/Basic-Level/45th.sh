# 45. Create a `for` loop to process all `.log` files in the current directory.

#!/bin/bash

for logfile in *.log; do
    echo "Scanning $logfile for errors..."
    # Add processing logic here
done
