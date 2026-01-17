#!/bin/bash

# Remove the empty file server.log.

if [[ -f server.log ]]; then
  rm server.log
  echo "server.log removed"
else
  echo "server.log does not exist"
  exit 1
fi
