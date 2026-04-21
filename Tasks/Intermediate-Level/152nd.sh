# 152. Use gcloud to list all Cloud Storage buckets.

#!/bin/bash

echo "Listing all Cloud Storage buckets in the current Google Cloud project..."
gcloud storage buckets list --format="table(name,location,storageClass)"
