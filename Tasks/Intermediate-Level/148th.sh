# 148. Use Azure CLI to list storage accounts.

#!/bin/bash
echo "Listing all storage accounts in the current Azure subscription..."
az storage account list --query '[].{Name:name,ResourceGroup:resourceGroup,Location:location}' --output table
