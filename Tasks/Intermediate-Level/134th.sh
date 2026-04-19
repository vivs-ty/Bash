# 134. Create a script that checks for dependencies before running.

#!/bin/bash

check_dependency() {
    local cmd="$1"
    local package="$2"
    
    if command -v "$cmd" &> /dev/null; then
        echo "✓ $cmd is available"
        return 0
    else
        echo "✗ $cmd is not installed"
        echo "  Install with: apt-get install $package (Debian/Ubuntu)"
        echo "  Or: yum install $package (RHEL/CentOS)"
        return 1
    fi
}

echo "=== Checking Dependencies ==="
echo

missing_deps=0

echo "Checking required commands..."
check_dependency "bash" "bash" || missing_deps=1
check_dependency "grep" "grep" || missing_deps=1
check_dependency "awk" "gawk" || missing_deps=1
check_dependency "sed" "sed" || missing_deps=1
check_dependency "curl" "curl" || missing_deps=1

echo
echo "Checking optional cloud CLI tools..."
check_dependency "aws" "awscli" || true
check_dependency "az" "azure-cli" || true
check_dependency "gcloud" "google-cloud-sdk" || true

echo
if [ $missing_deps -eq 1 ]; then
    echo "ERROR: Missing required dependencies. Cannot proceed."
    exit 1
else
    echo "All required dependencies are satisfied!"
fi
