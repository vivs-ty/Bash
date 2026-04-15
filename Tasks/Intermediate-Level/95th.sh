# 95. Monitor the CPU and memory usage of the top 5 processes in real-time using `top`.

#!/bin/bash

echo "Monitoring the CPU and memory usage of the top 5 processes in real-time..."
top -b -o %CPU -n 1 | head -n 12
echo "Press Ctrl+C to stop monitoring."
ctrl_c() {
    echo "Monitoring stopped."
    exit 0
}
trap ctrl_c INT 
while true; do
    top -b -o %CPU -n 1 | head -n 12
    sleep 2
done

