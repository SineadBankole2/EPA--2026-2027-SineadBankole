#!/bin/bash


usage() {
    echo "Usage: $(basename "$0") [MAX_NUM_CORES]"
}

# Check if the user provided a number
if [ -z "$1" ]; then
    usage
    exit 1
fi

# Check if the input is a valid whole number
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid number"
    usage
    exit 1
fi

# Count the available CPUs
num_cpu=$(nproc)

# Get the required number of CPUs
required_cpu=$1

# Check if there are enough CPUs
if [ "$num_cpu" -lt "$required_cpu" ]; then
    echo "Error: Not enough CPU cores"
    exit 1
else
    echo "OK: Enough CPU cores available"
fi
