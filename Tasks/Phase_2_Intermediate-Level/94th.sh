# 94. Kill all processes with a specific name. (Use with caution!)

#!/bin/bash

echo "Enter the name of the process you want to kill:"
read -r process_name
echo "Killing all processes with the name $process_name..."

Using pkill is the standard, safer way to kill by name rather than piping pgrep to kill.
if pkill "$process_name"; then
echo "All processes named $process_name have been killed successfully."
else
echo "Failed to kill some or all processes named $process_name. No such process is running, or you lack permissions. Please check the process name and your permissions."
fi
