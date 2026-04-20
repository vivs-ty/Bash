# 150. Use gcloud to list all compute instances in a project.

#!/bin/bash
echo "Listing all compute instances in the current Google Cloud project..."
gcloud compute instances list --format="table(name,zone,machineType,status)"
