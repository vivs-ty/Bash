# 172. Use `curl` to download a file and check its HTTP status code.

#!/bin/bash

read -r -p "Enter the URL of the file to download: " url
read -r -p "Enter the destination filename (e.g., output.zip): " filename

echo "Downloading file..."
# -w extracts the status code, -o saves the file, -s hides the progress bar
response=$(curl -s -w "%{http_code}" -o "$filename" "$url")

# Check if the HTTP status code starts with a 2 (e.g., 200 OK)
if [[ "$response" =~ ^2 ]]; then
    echo "File downloaded successfully and saved to '$filename'. (Status code: $response)"
else
    echo "Failed to download file. (HTTP status code: $response)"
    # Clean up the empty or error-page file that was created
    rm -f "$filename"
    exit 1
fi
