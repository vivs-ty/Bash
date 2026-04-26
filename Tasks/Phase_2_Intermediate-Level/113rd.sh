# 113. Add a directory to the `PATH` environment variable temporarily.

#!/bin/bash

# NOTE: For this to affect your current terminal, you MUST run this script 
# using 'source script.sh'.

echo "Adding /usr/local/bin to the PATH environment variable temporarily."
export PATH="/usr/local/bin:$PATH"
echo "Current PATH is now: $PATH"
echo "Remember: This only affects the current session if you ran this with 'source'."