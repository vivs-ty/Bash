# 23. Display the last 5 lines of `db.config`.

#!/bin/bash

echo "Please enter the file name:"
read -r file_name

# 'tail' shows the bottom of the file
tail -n 5 "$file_name"
