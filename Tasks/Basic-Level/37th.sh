# 37. Check if a file is executable.

#!/bin/bash

file="script.sh"

if [ -x "$file" ]; then
    echo "$file is executable."
else
    echo "$file is not executable."
fi
