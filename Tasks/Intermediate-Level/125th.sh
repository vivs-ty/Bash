# 125. Create a script to simulate deploying a simple "application" (e.g., copying files to a target directory).

#!/bin/bash

echo "Simulating deploying an application by copying files from 'app_source' to 'app_target' directory:"
echo "command used for copying files : cp -r app_source/* app_target/"
echo "---------------------------------------------"
cp -r app_source/* app_target/
echo "Application deployed (files copied to target directory)."
