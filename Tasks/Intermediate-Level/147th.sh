# 147. Use Azure CLI to create and delete a virtual machine.

#!/bin/bash
VM_NAME="myVM"
RESOURCE_GROUP="myResourceGroup"
LOCATION="eastus"
echo "Creating virtual machine $VM_NAME in resource group $RESOURCE_GROUP..."
az vm create --resource-group $RESOURCE_GROUP --name $VM_NAME --image UbuntuLTS --location $LOCATION
echo "Virtual machine $VM_NAME created successfully."
echo "Deleting virtual machine $VM_NAME from resource group $RESOURCE_GROUP..."
az vm delete --resource-group $RESOURCE_GROUP --name $VM_NAME --yes
echo "Virtual machine $VM_NAME deleted successfully."