# 192. Use `trap` to handle specific signals like `SIGINT` and perform cleanup actions.

#!/bin/bash

TEMP_FILE="/tmp/my_temp_file_$$.txt"
touch "$TEMP_FILE"

cleanup() {
    echo -e "\n[Trap Triggered] Performing cleanup actions..."
    if [ -f "$TEMP_FILE" ]; then
        rm -f "$TEMP_FILE"
        echo "Cleaned up temporary file: $TEMP_FILE"
    fi
    echo "Exiting gracefully."
    exit 1
}

# Set up the trap to catch SIGINT (Ctrl+C) and standard EXIT
trap cleanup SIGINT EXIT

echo "Script is running. A temporary file was created."
echo "Press Ctrl+C to trigger the trap and test the cleanup!"

# Infinite loop to keep the script running so you can test Ctrl+C
while true; do
    sleep 1
done
