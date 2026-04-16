# 104. Schedule a script to run on the 15th of every month.

#!/bin/bash

echo "Scheduling script to run on the 15th of every month..."
echo "0 0 15 * * /path/to/your/script.sh" >> /etc/crontab
echo "Script scheduled successfully. It will run on the 15th of every month."

