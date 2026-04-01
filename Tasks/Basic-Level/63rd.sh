# 63. Pipe the output of `cat server.log` to `grep "warning"`.

#!/bin/bash

echo "Piping the output of cat server.log to grep to filter lines containing 'warning'"
cat server.log | grep "warning"
echo "The above command will display all lines from server.log that contain the word 'warning'."