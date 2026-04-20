# 147. Use Azure CLI to create and delete a virtual machine.

#!/bin/bash

VM_NAME="myVM"
RESOURCE_GROUP="myResourceGroup"
LOCATION="eastus"

echo "Provisioning virtual machine '$VM_NAME' in resource group '$RESOURCE_GROUP'..."
az vm create \
    --resource-group "$RESOURCE_GROUP" \
    --name "$VM_NAME" \
    --image Ubuntu2204 \
    --location "$LOCATION" \
    --generate-ssh-keys

echo "Virtual machine '$VM_NAME' provisioned successfully."
echo

# Prevent immediate deletion so the user can actually verify the VM exists
read -r -p "Press Enter when you are ready to delete the VM and clean up resources..."

echo "Decommissioning virtual machine '$VM_NAME' from resource group '$RESOURCE_GROUP'..."
az vm delete --resource-group "$RESOURCE_GROUP" --name "$VM_NAME" --yes

echo "Virtual machine '$VM_NAME' has been successfully deleted."
