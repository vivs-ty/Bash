# 192. Use `trap` to handle specific signals like `SIGINT` and perform cleanup actions.

#!/bin/bash

echo "Script is running. Press Ctrl+C to trigger the trap."
# Set up a trap to catch SIGINT (Ctrl+C) and perform cleanup
trap 'echo "SIGINT received. Performing cleanup..."; exit 1' SIGINT
cleanup() {
    echo "Performing cleanup actions..."
    # Add any cleanup commands here, such as removing temporary files
}
# Set up a trap to call the cleanup function on EXIT
trap cleanup EXIT
