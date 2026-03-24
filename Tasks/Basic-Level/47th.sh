# 47. Create a `while` loop that reads lines from a file until the end is reached.

#!/bin/bash

while IFS= read -r line; do
    echo "Processing line: $line"
done < "input.txt"