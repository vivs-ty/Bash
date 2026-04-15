# 93. Kill a process by its PID.

#!/bin/bash

echo "Enter the PID of the process you want to kill:"
read pid
echo "Killing the process with PID $pid..."
kill $pid
if [ $? -eq 0 ]; then
    echo "Process with PID $pid has been killed successfully."
else
    echo "Failed to kill the process with PID $pid. Please check if the PID is correct and if you have the necessary permissions."
fi  
