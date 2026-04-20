# 149. Use Azure CLI to create a blob container.

#!/bin/bash

CONTAINER_NAME="mycontainer"
STORAGE_ACCOUNT="mystorageaccount"

echo "Initializing blob container '$CONTAINER_NAME' within storage account '$STORAGE_ACCOUNT'..."
az storage container create \
    --name "$CONTAINER_NAME" \
    --account-name "$STORAGE_ACCOUNT"

echo "Blob container '$CONTAINER_NAME' was created successfully."

