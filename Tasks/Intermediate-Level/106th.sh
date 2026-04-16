# 106. Prevent email notifications from a cron job.

#!/bin/bash
echo "0 0 * * * /path/to/your/script.sh > /dev/null 2>&1" | crontab -
