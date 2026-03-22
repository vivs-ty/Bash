# 14. Create multiple empty files: `app.config`, `database.config`.

#!/bin/bash

echo "Enter the names of the files to create (separated by spaces):"
read -r -a file_names # multiple files 

echo "Creating files: ${file_names[*]}"
touch "${file_names[@]}"
