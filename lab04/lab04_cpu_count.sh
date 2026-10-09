#!/bin/bash

num_cpu=$(nproc)

required_cpu=$1

if [ "$num_cpu" -lt "$required_cpu" ]; then
    echo "Error: Not enough CPU cores"
    exit 1
else
    echo "OK: Enough CPU cores available"
fi
