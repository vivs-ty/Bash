# 41. Use the `test` command to check if a string is empty.

#!/bin/bash

my_string=""
if test -z "$my_string"; then
    echo "The string is empty."
fi