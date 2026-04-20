# 146. Use Azure CLI to list all resource groups.

#!/bin/bash

echo "Listing all resource groups in the current Azure subscription..."
az group list --query '[].{Name:name,Location:location}' --output table
