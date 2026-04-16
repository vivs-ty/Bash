# 107. List all cron jobs for the current user.

#!/bin/bash

echo "Cron jobs for the current user:"
crontab -l
