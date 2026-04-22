# 170. Create a script to automatically update Terraform providers.

#!/bin/bash

echo "Updating Terraform providers to their latest acceptable versions..."

# The -upgrade flag updates the dependency lock file (.terraform.lock.hcl)
if terraform init -upgrade; then
    echo "Terraform providers updated successfully."
else
    echo "Error: Failed to update Terraform providers."
    exit 1
fi
