# 64. Pipe the output of `ls -l` to `grep "^-"` to list only files.

#!/bin/bash
echo "Piping the output of ls -l to grep to filter only files (lines starting with '-')"    
ls -l | grep "^-"
echo "The above command will display only the files in the current directory, as lines starting with    '-' indicate regular files in the long listing format of ls -l." 
