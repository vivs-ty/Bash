# 108. Remove a specific cron job.

#!/bin/bash

# Target job string exactly as it appears in crontab
JOB="0 0 * * * /home/user/backup.sh"

echo "Attempting to remove the following cron job:"
echo "$JOB"

# Use grep -v to filter out the specific line, then write the rest back to crontab
crontab -l | grep -vF "$JOB" | crontab -  
echo "Job removed successfully."
