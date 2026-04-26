# 71. Find all files larger than 1MB in the `/var/log` directory.

#!/bin/bash

echo "Finding all files larger than 1MB in the /var/log directory..."
echo " use the command: sudo find /var/log -type f -size +1M"
echo "Results:" 
sudo find /var/log -type f -size +1M
# Note: sudo is used here because /var/log directories often restrict read access.
