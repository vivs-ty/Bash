# 121. Simulate listing "instances" (e.g., by listing files in a directory).


#!/bin/bash

# Ensure the directory exists before trying to list it
mkdir -p instances/

echo "Simulating listing instances by showing files in the 'instances' directory:"
echo "command used for listing files : ls -l instances/"
echo "---------------------------------------------"
ls -l instances/
pwd