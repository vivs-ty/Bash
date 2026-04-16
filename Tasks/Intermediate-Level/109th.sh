# 109. Create a script that adds a new cron job to back up a directory daily.


#!/bin/bash

echo "Enter the directory you want to back up:"
read directory
echo "Enter the backup location:"
read backup_location
# Create a cron job to back up the directory daily
(crontab -l 2>/dev/null; echo "0 0 * * * tar -czf $backup_location/backup_$(date +\%Y\%m\%d).tar.gz $directory") | crontab -
echo "Cron job added to back up $directory daily to $backup_location"
