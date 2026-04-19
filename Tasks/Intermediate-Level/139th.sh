# 139. Implement a basic locking mechanism to prevent concurrent execution of a script.

#!/bin/bash

LOCK_FILE="/tmp/script.lock"
LOCK_TIMEOUT=10

acquire_lock() {
    local count=0
    
    while [ -f "$LOCK_FILE" ]; do
        if [ $count -ge $LOCK_TIMEOUT ]; then
            echo "ERROR: Could not acquire lock after $LOCK_TIMEOUT seconds"
            echo "Another instance may still be running."
            echo "Lock file: $LOCK_FILE"
            return 1
        fi
        
        echo "Waiting for lock... ($count/$LOCK_TIMEOUT)"
        sleep 1
        count=$((count + 1))
    done
    
    echo "$$" > "$LOCK_FILE"
    echo "Lock acquired: $$"
    return 0
}

release_lock() {
    if [ -f "$LOCK_FILE" ]; then
        local lock_pid=$(cat "$LOCK_FILE")
        if [ "$lock_pid" = "$$" ]; then
            rm -f "$LOCK_FILE"
            echo "Lock released"
        else
            echo "WARNING: Lock owned by different process: $lock_pid"
        fi
    fi
}

trap release_lock EXIT

echo "=== Script Locking Mechanism Demo ==="
echo "Process ID: $$"
echo

if ! acquire_lock; then
    exit 1
fi

echo "Performing critical operations..."
echo "Starting critical section..."

for i in 1 5; do
    echo "  Task $i/5 in progress..."
    sleep 1
done

echo "Critical section complete!"
echo
echo "Lock will be released on exit"

sleep 2
