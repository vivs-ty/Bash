# 66. Create a script that backs up all `.conf` files in a directory to a `backup` subdirectory.

#!/bin/bash

mkdir -p backup
cp *.conf backup/
echo "Backup completed."
