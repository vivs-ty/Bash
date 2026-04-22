# 164. Write a Bash script to destroy the Terraform managed infrastructure (`terraform destroy --auto-approve`).

#!/bin/bash

echo "WARNING: Destroying Terraform managed infrastructure..."
read -r -p "This will permanently delete all resources managed by Terraform. Are you sure? (yes/no): " confirmation

if [[ "$confirmation" != "yes" ]]; then
    echo "Aborting Terraform destroy operation."
    exit 1
fi

if terraform destroy --auto-approve; then
    echo "Terraform infrastructure destroyed successfully."
else
    echo "Error: Failed to destroy infrastructure."
    exit 1
fi
