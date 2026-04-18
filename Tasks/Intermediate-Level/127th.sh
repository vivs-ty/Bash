# 127. Use `set -x` to debug a script by showing executed commands.

#!/bin/bash

echo "Using 'set -x' to enable debugging mode. This will show each command and its arguments as they are executed."
echo "---------------------------------------------"
set -x
echo "This command will be shown in the debug output."
ls non_existent_file.txt 2>/dev/null
echo "This command will still be executed even if the previous command fails, because we haven't set 'set -e'."
