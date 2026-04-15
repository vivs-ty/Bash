# 94. Kill all processes with a specific name. (Use with caution!)

#!/bin/bash

echo "Enter the name of the process you want to kill:"
read process_name
echo "Killing all processes with the name $process_name..."
pids=$(pgrep $process_name)
if [ -z "$pids" ]; then
    echo "No processes named $process_name are running."
else
    kill $pids
    if [ $? -eq 0 ]; then
        echo "All processes named $process_name have been killed successfully."
    else
        echo "Failed to kill some processes named $process_name. Please check if the process name is correct and if you have the necessary permissions."
    fi
fi
