# 194. Use conditional debugging output based on a script argument or environment variable.

#!/bin/bash

# Check if -d flag is passed OR if DEBUG env variable is set to 1
if [[ "$1" == "-d" ]] || [[ "${DEBUG:-0}" == "1" ]]; then
    DEBUG_MODE=true
    echo ">>> DEBUGGING MODE ACTIVATED <<<"
else
    DEBUG_MODE=false
fi

debug_log() {
    if [ "$DEBUG_MODE" = true ]; then
        echo "[DEBUG] $1"
    fi
}

echo "Starting application initialization..."
debug_log "Loading environment variables from /opt/app/.env..."
debug_log "Establishing database connection to localhost:5432..."
echo "Application initialized successfully."

# To test this, run: 
# ./script.sh -d
# OR
# DEBUG=1 ./script.sh
