# 175. Use `netstat` (or `ss`) to list all listening ports on a server.

#!/bin/bash

echo "Listening ports on the server:"
if command -v netstat &> /dev/null; then
    netstat -tuln | grep LISTEN
elif command -v ss &> /dev/null; then
    ss -tuln | grep LISTEN
else
    echo "Neither netstat nor ss is available on this system."
    exit 1
fi
