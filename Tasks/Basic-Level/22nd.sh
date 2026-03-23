# 22. Display the first 10 lines of `server.log`.

#!/bin/bash

echo "Please enter the file name:"
read file_name

# 'head' shows the top of the file
head -n 10 "$file_name"