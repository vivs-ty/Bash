# 46. Create a `while` loop that counts down from 10 to 1.


#!/bin/bash

count=10
while [ $count -gt 0 ]; do
    echo "T-minus: $count"
    ((count--))
done