#!/bin/bash

# Check if a URL was provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

# Assign the first argument as the URL
URL="$1"

# Extract the status code from the response using curl
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

# Print the status code
echo "Status Code: $STATUS_CODE"
