# 76. Replace all occurrences of "localhost" with "127.0.0.1" in a configuration file.

#!/bin/bash

echo "Replacing all occurrences of 'localhost' with '127.0.0.1' in the configuration file..."
echo " use the command: sed -i 's/localhost/127.0.0.1/g' /path/to/config.conf "
echo "Results:"
sed -i 's/localhost/127.0.0.1/g' /path/to/config.conf

