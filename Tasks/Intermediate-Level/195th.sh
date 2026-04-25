# 195. Implement a rollback mechanism in case of script failure during critical operations.

#!/bin/bash

rollback() {
    echo ">> FAILURE DETECTED: Initiating rollback procedure..."
    echo "Restoring previous database state..."
    echo "Removing failed deployment artifacts..."
    echo ">> Rollback complete. System restored to safe state."
}

critical_operation() {
    echo "Performing critical database migration..."
    sleep 1
    # Simulating a failure with a non-zero exit code
    return 1
}

echo "Starting deployment..."

# If critical_operation fails (returns non-zero), execute the rollback function and exit
if ! critical_operation; then
    rollback
    exit 1
fi

echo "Deployment successful."
