# 71. Find all files larger than 1MB in the `/var/log` directory.

#!/bin/bash

echo "Finding all files larger than 1MB in the /var/log directory..."
echo " use the command: find /var/log -type f -size +1M"
echo "Results:" 
find /var/log -type f -size +1M