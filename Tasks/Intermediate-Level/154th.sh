# 154. Write a script to automate the backup of EC2 volumes using AWS CLI.

#!/bin/bash

echo "Starting EC2 volume backup..."
echo "Please enter the ID of the EC2 instance you want to back up:"
read INSTANCE_ID
echo "Please enter a description for the backup:"
read DESCRIPTION
# Get the volume IDs attached to the instance
VOLUME_IDS=$(aws ec2 describe-volumes --filters Name=attachment.instance-id,Values=$INSTANCE_ID --query "Volumes[].VolumeId" --output text)
if [ -z "$VOLUME_IDS" ]; then
    echo "No volumes found attached to instance $INSTANCE_ID. Please check the instance ID and try again."
    exit 1
fi
# Create snapshots for each volume
for VOLUME_ID in $VOLUME_IDS; do
    echo "Creating snapshot for volume $VOLUME_ID..."
    SNAPSHOT_ID=$(aws ec2 create-snapshot --volume-id $VOLUME_ID --description "$DESCRIPTION" --query "SnapshotId" --output text)
    if [ $? -eq 0 ]; then
        echo "Snapshot $SNAPSHOT_ID created successfully for volume $VOLUME_ID."
    else
        echo "Failed to create snapshot for volume $VOLUME_ID. Please check the error messages above and try again."
    fi
done
echo "EC2 volume backup process completed."
