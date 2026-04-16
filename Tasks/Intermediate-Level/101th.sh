# 101. Schedule a script to run every day at midnight.

#!/bin/bash

echo "Scheduling a script to run every day at midnight..."
# Safely append to the crontab without overwriting existing jobs
(crontab -l 2>/dev/null; echo "0 0 * * * /path/to/your/script.sh") | crontab -
echo "Script scheduled successfully. It will run every day at midnight."
# Note: Replace "/path/to/your/script.sh" with the actual path to your script.
