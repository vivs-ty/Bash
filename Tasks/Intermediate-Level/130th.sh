# 130. Use the `trap` command to handle script termination signals (e.g., `Ctrl+C`).

#!/bin/bash

echo "This script will run indefinitely until you press Ctrl+C to terminate it."
echo "When you press Ctrl+C, the trap will catch the signal and execute the cleanup function."
echo "---------------------------------------------"

# Define a cleanup function to be called when the script receives a termination signal
cleanup() {
echo -e "\nCaught termination signal. Cleaning up before exiting..."
# Perform any necessary cleanup tasks here (e.g., removing temporary files)
echo "Cleanup complete. Exiting now."
exit 0
}

# Set up a trap to catch the SIGINT signal (sent by Ctrl+C) and call the cleanup function
trap cleanup SIGINT

# Simulate a long-running process (e.g., an infinite loop)
while true; do
echo "Running... Press Ctrl+C to stop."
sleep 5
done
