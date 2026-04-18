# 122. Simulate starting an "instance" (e.g., by creating an empty file).

#!/bin/bash

# Ensure the directory exists
mkdir -p instances/

echo "Simulating starting an instance by creating an empty file named 'instance1' in the 'instances' directory:"
echo "command used for creating file : touch instances/instance1"
echo "---------------------------------------------"
touch instances/instance1
echo "Instance 'instance1' started (file created)."