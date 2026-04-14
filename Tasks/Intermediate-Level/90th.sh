# 90. Use `sed` to append a line at the end of a file.

#!/bin/bash

echo "Appending a line at the end of the file using sed..."
echo " use the command: sed -i '$a This is the appended line.' /path/to/file.txt "
echo "Results:"
sed -i '$a This is the appended line.' /path/to/file.txt

