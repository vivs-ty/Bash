# 107. List all cron jobs for the current user.

#!/bin/bash

echo "Cron jobs for the current user:"
crontab -l
# This command lists all the cron jobs scheduled for the current user. If there are no cron jobs, it will display "no crontab for [username]".

