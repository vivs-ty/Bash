#!/bin/bash

until [ -f "config.ready" ]; do
    echo "Waiting for config.ready to be created..."
    sleep 2
done
echo "Config file found! Proceeding..."