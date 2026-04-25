# 193. Create a robust error handling function that takes an error message and exit code.

#!/bin/bash

echo "This script demonstrates a robust error handling function."
error_exit() {
    local message="$1"
    local exit_code="$2"
    echo "Error: $message" >&2
    exit "$exit_code"
}
