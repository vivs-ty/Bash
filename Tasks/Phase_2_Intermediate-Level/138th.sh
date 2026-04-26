# 138. Write a script that uses a loop to perform an action on multiple files or resources.

#!/bin/bash

echo "=== Batch File and Resource Processing Utility ==="
echo

TEMP_DIR="/tmp/batch_test_$$"
mkdir -p "$TEMP_DIR"

for i in {1..5}; do
    echo "server-$i" > "$TEMP_DIR/server_$i.txt"
done

echo "Successfully generated 5 temporary test files within $TEMP_DIR."
echo

echo "Evaluating file contents..."
echo "-----------------------------------"

for file in "$TEMP_DIR"/*.txt; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        size=$(wc -c < "$file")
        content=$(cat "$file")
        
        echo "Processing File: $filename"
        echo "  Allocated Size: $size bytes"
        echo "  Internal Content: $content"
        
        if [ "$size" -gt 0 ]; then
            echo "  Data Status: Populated (Non-empty)"
        else
            echo "  Data Status: Empty"
        fi
        echo
    fi
done

echo "-----------------------------------"
echo "File evaluation process completed."
echo

echo "Simulating health checks across multiple infrastructure resources..."
for server in web-01 web-02 web-03 db-01 cache-01; do
    echo "Pinging $server to verify operational health..."
    echo "  ✓ $server is responding and healthy."
done

echo
echo "Purging temporary test files..."
rm -rf "$TEMP_DIR"
echo "Operation completely finished."
