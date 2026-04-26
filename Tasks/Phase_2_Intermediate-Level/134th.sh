# 134. Create a script that checks for dependencies before running.

#!/bin/bash

check_dependency() {
local cmd="$1"
local package="$2"

if command -v "$cmd" &> /dev/null; then
    echo "✓ $cmd is available."
    return 0
else
    echo "✗ $cmd is not installed."
    echo "  To install on Debian/Ubuntu, run: apt-get install $package"
    echo "  To install on RHEL/CentOS, run: yum install $package"
    return 1
fi
}

echo "=== System Dependency Checker ==="
echo

missing_deps=0

echo "Verifying required system commands..."
check_dependency "bash" "bash" || missing_deps=1
check_dependency "grep" "grep" || missing_deps=1
check_dependency "awk" "gawk" || missing_deps=1
check_dependency "sed" "sed" || missing_deps=1
check_dependency "curl" "curl" || missing_deps=1

echo
echo "Verifying optional cloud CLI tools..."
check_dependency "aws" "awscli" || true
check_dependency "az" "azure-cli" || true
check_dependency "gcloud" "google-cloud-sdk" || true

echo
if [ $missing_deps -eq 1 ]; then
echo "ERROR: Critical dependencies are missing. Execution aborted."
exit 1
else
echo "All required dependencies are satisfied. You may proceed."
fi
