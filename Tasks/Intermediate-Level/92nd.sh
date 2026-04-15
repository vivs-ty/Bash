# 92. Find the process ID (PID) of a process by its name (e.g., `nginx`).

#!/bin/bash
echo "Enter the process name:"
read -r process_name
echo "Finding the process ID (PID) of $process_name..."
pid=$(pgrep "$process_name")
if [ -z "$pid" ]; then
echo "No process named $process_name is running."
else
echo "The PID(s) of $process_name is/are:"
echo "$pid"
fi