# 124. Simulate getting the "status" of an "instance" (e.g., by checking if a file exists).

#!/bin/bash

echo "Simulating getting the status of an instance by checking if the file named 'instance1' exists in the 'instances' directory:"
echo "command used for checking file existence : [ -f instances/instance1 ] && echo 'Instance is running' || echo 'Instance is stopped'"
echo "---------------------------------------------"
if [ -f instances/instance1 ]; then
    echo "Instance is running (file exists)."
else
    echo "Instance is stopped (file does not exist)."
fi
