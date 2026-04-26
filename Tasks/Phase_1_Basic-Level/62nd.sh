# 62. Redirect the error output of a non-existent command to `error.log`.

#!/bin/bash

echo "Redirecting error output of a non-existent command to error.log"  
non_existent_command 2> error.log
echo "The error output has been redirected to error.log. You can check the contents of error.log to see the error message."
