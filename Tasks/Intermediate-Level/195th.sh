# 195. Implement a rollback mechanism in case of script failure during critical operations.

#!/bin/bash


echo "This script demonstrates a rollback mechanism in case of failure during critical operations."
# Define a function to perform critical operations
critical_operation() {
    echo "Performing critical operation..."
    # Simulate a failure with a non-zero exit code
    return 1
}
