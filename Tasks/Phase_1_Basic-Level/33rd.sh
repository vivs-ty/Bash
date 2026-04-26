# 33. Check if a file named `data.txt` exists.

#!/bin/bash

if [ -f "data.txt" ]; then
    echo "File data.txt exists."
else
    echo "File data.txt does not exist."
fi
