# 113. Add a directory to the `PATH` environment variable temporarily.

#!/bin/bash
echo "Adding /usr/local/bin to the PATH environment variable temporarily."
export PATH="/usr/local/bin:$PATH"
echo "Current PATH: $PATH"
echo "This change is temporary and will only last for the duration of this shell session."
echo "To make this change permanent, add the following line to your ~/.bashrc or ~/.bash_profile:"
echo "export PATH='/usr/local/bin:\$PATH'" 