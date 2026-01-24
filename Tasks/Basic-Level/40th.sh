#!/bin/bash

read -p "Enter status code: " code

if [ "$code" -eq 200 ]; then
    echo "Status: OK"
elif [ "$code" -eq 404 ]; then
    echo "Status: Not Found"
else
    echo "Status: Other error"
fi
