# 108. Remove a specific cron job.

#!/bin/bash

echo "0 0 * * * /home/user/backup.sh" >> mycron
crontab mycron
rm mycron  
# To remove the specific cron job, we can use the following command:
crontab -l | grep -v "0 0 * * * /home/user/backup.sh" | crontab -  
