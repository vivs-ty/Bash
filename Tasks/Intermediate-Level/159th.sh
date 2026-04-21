# 159. Write a script to automate database backups to Google Cloud Storage using `gcloud`.

#!/bin/bash

echo "Starting database backup to Google Cloud Storage..."
echo "Please enter the name of your Cloud SQL instance:"
read INSTANCE_NAME
echo "Please enter the name of the database you want to back up:"
read DATABASE_NAME
echo "Please enter the name of the Cloud Storage bucket where you want to store the backup:"
read BUCKET_NAME
# Create a temporary file to store the backup
BACKUP_FILE="/tmp/${DATABASE_NAME}_backup.sql"
# Export the database to a SQL file
gcloud sql export sql $INSTANCE_NAME gs://$BUCKET_NAME/$DATABASE_NAME_backup.sql
if [ $? -eq 0 ]; then
    echo "Database backup successful! Backup stored in gs://$BUCKET_NAME/$DATABASE_NAME_backup.sql"
else
    echo "Database backup failed. Please check the error messages above and try again."
fi
