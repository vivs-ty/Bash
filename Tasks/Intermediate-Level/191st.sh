# 191. Implement custom error messages and logging with timestamps.

#!/bin/bash

echo "This is a custom error message with a timestamp: $(date)" >&2
echo "This is a custom log message with a timestamp: $(date)" >> script.log
echo "This is a normal message without a timestamp."
echo "This is another custom error message with a timestamp: $(date)" >&2
echo "This is another custom log message with a timestamp: $(date)" >> script.log
