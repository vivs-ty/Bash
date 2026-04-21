# 159. Write a script to automate database backups to Google Cloud Storage using `gcloud`.

#!/bin/bash

echo "Starting database backup to Google Cloud Storage..."
read -r -p "Please enter the name of your Cloud SQL instance: " INSTANCE_NAME
read -r -p "Please enter the name of the database you want to back up: " DATABASE_NAME
read -r -p "Please enter the name of the Cloud Storage bucket (without gs://): " BUCKET_NAME

# Export the database directly to a SQL file in the GCS bucket
echo "Exporting database $DATABASE_NAME to gs://$BUCKET_NAME/${DATABASE_NAME}_backup.sql..."
gcloud sql export sql "$INSTANCE_NAME" "gs://$BUCKET_NAME/${DATABASE_NAME}_backup.sql" \
    --database="$DATABASE_NAME"

if [ $? -eq 0 ]; then
    echo "Database backup successful! Backup stored in gs://$BUCKET_NAME/${DATABASE_NAME}_backup.sql"
else
    echo "Database backup failed. Please check the error messages above."
fi
