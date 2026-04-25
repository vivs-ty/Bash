# 196. Use `set -o pipefail` to ensure that a script exits if any command in a pipeline fails.

#!/bin/bash

# -e exits on error. -o pipefail ensures pipeline errors aren't masked by the last command.
set -eo pipefail

echo "Executing a successful pipeline..."
echo "Server is active and healthy" | grep "healthy"

echo "Executing a failing pipeline..."
# grep will return an exit code of 1 because it cannot find the word "CRITICAL"
# Without pipefail, the script would continue because the 'echo' command succeeded.
echo "Server is running normally" | grep "CRITICAL"

echo "This message will NOT be printed because the script immediately aborted."
