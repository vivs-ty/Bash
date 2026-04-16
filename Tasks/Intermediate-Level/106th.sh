# 106. Prevent email notifications from a cron job.

#!/bin/bash

echo "Configuring cron job to suppress output and emails..."

# Sending output to /dev/null prevents cron from emailing the user
(crontab -l 2>/dev/null; echo "0 0 * * * /path/to/your/script.sh > /dev/null 2>&1") | crontab -

echo "Script scheduled silently." 
echo "It will run every day at midnight without sending email notifications."
# Note: Replace "/path/to/your/script.sh" with the actual path to your script.