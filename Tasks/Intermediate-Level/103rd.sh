# 103. Schedule a script to run every Monday at 9 AM.

#!/bin/bash

echo "Scheduling a script to run every Monday at 9 AM..."
echo "0 9 * * 1 /path/to/your/script.sh" | crontab -
echo "Script scheduled successfully. It will run every Monday at 9 AM."
