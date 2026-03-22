# 20. Remove the `backup_scripts` directory and its contents. (Use with caution!)

#!/bin/bash

echo "Removing backup_scripts directory and its contents... (Use with caution!)"

if [[ -d backup_scripts ]]; then
  rm -rf backup_scripts
  echo "backup_scripts directory and its contents removed"
else
  echo "backup_scripts directory does not exist"
  exit 1
fi
