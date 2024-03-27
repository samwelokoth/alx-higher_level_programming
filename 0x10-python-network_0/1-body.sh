#!/bin/bash

# Check if a URL was provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

# Assign the first argument as the URL
URL="$1"

# Send a GET request using cURL and display the response body if the status code is 200
curl -s "$URL" | grep -E "<body[^>]*>(.*?)</body>" | head -n 1 || { echo "Error: Unable to fetch data"; exit 1; }
