# 102. Schedule a script to run every hour.

#!/bin/bash

echo "Scheduling a script to run every hour..."
(crontab -l 2>/dev/null; echo "0 * * * * /path/to/your/script.sh") | crontab -
echo "Script scheduled successfully. It will run every hour."
# Note: Replace "/path/to/your/script.sh" with the actual path to your script.