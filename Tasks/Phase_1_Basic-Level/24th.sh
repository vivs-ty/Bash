# 24. Display the content of `server.log` page by page.

#!/bin/bash

FILE="server.log"

if [ -f "$FILE" ]; then
    echo "Opening $FILE page by page. Press 'q' to quit."
    sleep 2
    less "$FILE"
    #more "$FILE"
else
    echo "Error: $FILE not found."
fi