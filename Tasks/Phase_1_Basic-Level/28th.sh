# 28. Count the number of files in the current directory.

#!/bin/bash

file_count=$(ls -A1 | wc -l)

echo "There are $file_count items in the current directory (including hidden ones)."