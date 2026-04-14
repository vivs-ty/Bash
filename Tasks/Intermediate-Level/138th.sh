# 138. Write a script that uses a loop to perform an action on multiple files or resources.

#!/bin/bash

echo "=== Batch File Processing Script ==="
echo

TEMP_DIR="/tmp/batch_test_$$"
mkdir -p "$TEMP_DIR"

for i in 1 2 3 4 5; do
    echo "server-$i" > "$TEMP_DIR/server_$i.txt"
done

echo "Created 5 test files in $TEMP_DIR"
echo

echo "Processing files..."
echo "-----------------------------------"

for file in "$TEMP_DIR"/*.txt; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        size=$(wc -c < "$file")
        content=$(cat "$file")
        
        echo "File: $filename"
        echo "  Size: $size bytes"
        echo "  Content: $content"
        
        if [ "$size" -gt 0 ]; then
            echo "  Status: Non-empty"
        else
            echo "  Status: Empty"
        fi
        echo
    fi
done

echo "-----------------------------------"
echo "Processing complete!"
echo

echo "Demonstrating resource loop (simulated servers)..."
for server in web-01 web-02 web-03 db-01 cache-01; do
    echo "Checking health of $server..."
    echo "  ✓ $server is healthy"
done

echo
echo "Cleaning up test files..."
rm -rf "$TEMP_DIR"
echo "Done!"