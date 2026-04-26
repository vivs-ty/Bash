# 40. Use `elif` to check if a status code is 200, 404, or something else.

#!/bin/bash

read -p "Enter status code: " code

if [ "$code" -eq 200 ]; then
    echo "Status: OK"
elif [ "$code" -eq 404 ]; then
    echo "Status: Not Found"
else
    echo "Status: Other error"
fi
