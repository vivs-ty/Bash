# 95. Monitor the CPU and memory usage of the top 5 processes in real-time using `top`.

#!/bin/bash

echo "Monitoring the CPU and memory usage of the top 5 processes in real-time..."
echo "Press Ctrl+C to stop monitoring."
sleep 2

ctrl_c() {
    echo -e "\nMonitoring stopped."
    exit 0
}
trap ctrl_c INT 

while true; do
    clear # Clears the screen each loop to create a static dashboard effect
    top -b -o %CPU -n 1 | head -n 12
    sleep 2
done
