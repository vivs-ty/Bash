# 38. Use an `if` statement to print "File exists" if `config.ini` exists.

#!/bin/bash

if [ -f "config.ini" ]; then
    echo "File exists"
fi
