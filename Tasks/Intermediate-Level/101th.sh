# 101. Schedule a script to run every day at midnight.

#!/bin/bash

echo "Scheduling a script to run every day at midnight..."
echo "0 0 * * * /path/to/your/script.sh" | crontab -
echo "Script scheduled successfully. It will run every day at midnight."   
