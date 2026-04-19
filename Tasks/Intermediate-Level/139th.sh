#!/bin/bash

# Using a directory as a lock is atomic in Bash, preventing race conditions.
LOCK_DIR="/tmp/script.lock.d"
LOCK_TIMEOUT=10

acquire_lock() {
    local count=0
    
    # mkdir is atomic. It fails if the directory already exists.
    while ! mkdir "$LOCK_DIR" 2>/dev/null; do
        if [ $count -ge $LOCK_TIMEOUT ]; then
            echo "ERROR: Unable to acquire the execution lock after $LOCK_TIMEOUT seconds."
            echo "Another instance of this script may currently be running."
            echo "Active Lock Directory: $LOCK_DIR"
            return 1
        fi
        
        echo "Awaiting lock availability... ($count/$LOCK_TIMEOUT seconds)"
        sleep 1
        count=$((count + 1))
    done
    
    # Store the PID inside the lock directory for administrative tracking.
    echo "$$" > "$LOCK_DIR/pid"
    echo "Execution lock successfully acquired by process ID: $$"
    return 0
}

release_lock() {
    if [ -d "$LOCK_DIR" ]; then
        local lock_pid=$(cat "$LOCK_DIR/pid" 2>/dev/null)
        if [ "$lock_pid" = "$$" ]; then
            rm -rf "$LOCK_DIR"
            echo "Execution lock has been safely released."
        else
            echo "WARNING: The lock is currently held by a different process (PID: $lock_pid). It was not released."
        fi
    fi
}

trap release_lock EXIT

echo "=== Concurrency Locking Mechanism Utility ==="
echo "Current Process ID: $$"
echo

if ! acquire_lock; then
    exit 1
fi

echo "Access granted. Commencing critical operations..."

for i in {1..5}; do
    echo "  Executing highly critical task $i of 5..."
    sleep 1
done

echo "Critical operations finalized."
echo
echo "The lock will automatically be released upon script termination."

sleep 2
