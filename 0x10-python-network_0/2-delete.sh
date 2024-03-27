#!/bin/bash

# Check if a URL was provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

# Assign the first argument as the URL
URL="$1"

# Send a DELETE request using cURL and display the response body
RESPONSE=$(curl -s -X DELETE "$URL") || { echo "Error: Unable to delete data"; exit 1; }

echo "$RESPONSE"
