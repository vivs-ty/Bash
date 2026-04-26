# 104. Schedule a script to run on the 15th of every month.

#!/bin/bash

echo "Scheduling script to run on the 15th of every month..."
(crontab -l 2>/dev/null; echo "0 0 15 * * /path/to/your/script.sh") | crontab -
echo "Script scheduled successfully. It will run on the 15th of every month."
# Note: Replace "/path/to/your/script.sh" with the actual path to your script.
