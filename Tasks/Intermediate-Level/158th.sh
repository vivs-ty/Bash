# 158. Write a script to create a new Google Compute Engine instance with specific configurations using `gcloud`.

#!/bin/bash

echo "Enter the name of the instance:"
read INSTANCE_NAME
echo "Enter the zone (e.g., us-central1-a):"
read ZONE
echo "Enter the machine type (e.g., n1-standard-1):"
read MACHINE_TYPE
echo "Enter the image family (e.g., debian-10):"
read IMAGE_FAMILY
echo "Enter the image project (e.g., debian-cloud):"
read IMAGE_PROJECT
echo "Creating a new Google Compute Engine instance with the specified configurations..."
gcloud compute instances create $INSTANCE_NAME \
    --zone=$ZONE \
    --machine-type=$MACHINE_TYPE \
    --image-family=$IMAGE_FAMILY \
    --image-project=$IMAGE_PROJECT
if [ $? -eq 0 ]; then
    echo "Instance $INSTANCE_NAME created successfully in zone $ZONE with machine type $MACHINE_TYPE."
else
    echo "Failed to create instance. Please check the error messages above and try again."
fi
