# 105. Redirect the output of a cron job to a log file.

#!/bin/bash

echo "Configuring cron job to redirect output to a log file..."
# Both standard output (1) and standard error (2) are redirected to the log file
(crontab -l 2>/dev/null; echo "* * * * * /path/to/your/script.sh >> /path/to/logfile.log 2>&1") | crontab -
echo "Script scheduled. Output will be saved to /path/to/logfile.log"
# Note: Replace "/path/to/your/script.sh" with the actual path to your script and "/path/to/logfile.log" with the desired log file path.
