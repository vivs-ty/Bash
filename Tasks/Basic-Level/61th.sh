# 61. Append the output of the `date` command to `file_list.txt`.

#!/bin/bash

echo "Appending current date and time to file_list.txt using the date command "
echo "Current date and time: " >> file_list.txt ; date >> file_list.txt