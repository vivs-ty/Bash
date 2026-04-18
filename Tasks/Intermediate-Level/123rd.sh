# 123. Simulate stopping an "instance" (e.g., by deleting a file).

#!/bin/bash

echo "Simulating stopping an instance by deleting the file named 'instance1' in the 'instances' directory:"
echo "command used for deleting file : rm -rf instances/instance1"
echo "---------------------------------------------"
rm -rf instances/instance1
echo "Instance 'instance1' stopped (file deleted)."
