# 114. Add a directory to the `PATH` environment variable permanently.

#!/bin/bash
echo "Adding /usr/local/bin to the PATH environment variable permanently."
echo "To make this change permanent, add the following line to your ~/.bashrc or ~/.bash_profile:"
echo "export PATH='/usr/local/bin:\$PATH'"
echo "After adding the line, run 'source ~/.bashrc' or 'source ~/.bash_profile' to apply the changes immediately."
