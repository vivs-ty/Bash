# 34. Check if a directory named `logs` exists.

#!/bin/bash

if [ -d "logs" ]; then
    echo "Directory logs exists."
else
    echo "Directory logs does not exist."
fi
