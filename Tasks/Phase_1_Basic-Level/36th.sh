# 36. Check if a file is writable.

#!/bin/bash

file="data.txt"

if [ -w "$file" ]; then
    echo "$file is writable."
else
    echo "$file is not writable."
fi
