# 84. Apply a patch file to a configuration file.

#!/bin/bash

echo "Applying a patch file to the configuration file..."
echo " use the command: patch /path/to/configuration.conf < /path/to/patchfile.patch "
echo "Results:"
patch /path/to/configuration.conf < /path/to/patchfile.patch
