# 170. Create a script to automatically update Terraform providers.

#!/bin/bash

echo "Updating Terraform providers..."
terraform init -upgrade
echo "Terraform providers updated."
