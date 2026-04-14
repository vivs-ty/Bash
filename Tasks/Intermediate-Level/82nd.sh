# 82. Split a large file into smaller files of a specific size.

#!/bin/bash

echo "Splitting the large file into smaller files of a specific size..."
echo " use the command: split -b 1M /path/to/largefile.txt /path/to/smallfile_ "
echo "Results:"
split -b 1M /path/to/largefile.txt /path/to/smallfile_
