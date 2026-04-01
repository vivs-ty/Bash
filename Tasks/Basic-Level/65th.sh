# 65. Create a script that prompts the user for confirmation before deleting a file.

#!/bin/bash

echo "Enter the name of the file you want to delete:"       
read file_name
if [ -f "$file_name" ]; then
    echo "Are you sure you want to delete $file_name? (y/n)"
    read confirmation
    if [ "$confirmation" = "y" ]; then
        rm "$file_name"
        echo "$file_name has been deleted."
    else
        echo "Deletion cancelled."
    fi
else
    echo "File not found."
fi 
