# 13. Create an empty file named `server.log`.

#!/bin/bash

echo "Enter the name of the file to create:"
read -r file_name   # example: server.log

echo "Creating file: $file_name"
touch "$file_name"
