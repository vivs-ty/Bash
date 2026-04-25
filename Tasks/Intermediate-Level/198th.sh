# 198. Use `shellcheck` to statically analyze your Bash scripts for potential issues.

#!/bin/bash

SCRIPT_TO_CHECK="${1:-$0}" # Defaults to checking itself if no argument is provided

echo "=== Bash Static Analysis Tool ==="

if command -v shellcheck &> /dev/null; then
    echo "Running ShellCheck on $SCRIPT_TO_CHECK..."
    echo "----------------------------------------"
    shellcheck "$SCRIPT_TO_CHECK"
    
    if [ $? -eq 0 ]; then
        echo "Success: No issues detected by ShellCheck."
    else
        echo "Warning: ShellCheck identified potential issues above."
    fi
else
    echo "Error: 'shellcheck' is not installed."
    echo "To install on Debian/Ubuntu: sudo apt install shellcheck"
    echo "To install on RHEL/CentOS: sudo yum install ShellCheck"
    echo "To install on macOS: brew install shellcheck"
fi
