# 35. Check if a file is readable.

#!/bin/bash

file="data.txt"

if [ -r "$file" ]; then
    echo "$file is readable."
else
    echo "$file is not readable."
fi
