# 102. Schedule a script to run every hour.

#!/bin/bash

echo "Scheduling a script to run every hour..."
echo "0 * * * * /path/to/your/script.sh" | crontab -
echo "Script scheduled successfully. It will run every hour."
