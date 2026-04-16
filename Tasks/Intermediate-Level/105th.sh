# 105. Redirect the output of a cron job to a log file.

#!/bin/bash

echo "output of the cron job" >> /path/to/logfile.log
echo "This is a cron job output" >> /path/to/logfile.log