# 164. Write a Bash script to destroy the Terraform managed infrastructure (`terraform destroy --auto-approve`).

#!/bin/bash

echo "Destroying Terraform managed infrastructure..."
echo "This will permanently delete all resources managed by Terraform. Are you sure? (yes/no)"
read confirmation
if [[ "$confirmation" != "yes" ]]; then
    echo "Aborting Terraform destroy."
    exit 1
fi
terraform destroy --auto-approve
echo "Terraform infrastructure destroyed." 