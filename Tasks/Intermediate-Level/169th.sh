# 169. Implement error handling for Terraform commands within a Bash script.

#!/bin/bash

echo "Running Terraform command with error handling..."

# The if statement directly evaluates the exit status ($?) of the command
if terraform apply --auto-approve; then
    echo "SUCCESS: Terraform command executed successfully."
else
    # This block catches any non-zero exit code
    echo "ERROR: Terraform command failed."
    echo "Please check your .tf files and permissions, then try again."
    exit 1
fi
