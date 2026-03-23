# 27. Count the number of lines in `db.config`.

#!/bin/bash

# Example: setting the variable
file="db.config"

if [ -f "$file" ]; then
    line_count=$(wc -l < "$file")
    echo "The file '$file' has $line_count lines."
else
    echo "Error: File '$file' not found."
fi