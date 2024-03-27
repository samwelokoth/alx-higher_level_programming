#!/bin/bash

# Check if a URL was provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

# Assign the first argument as the URL
URL="$1"

# Define the custom header
HEADER="X-School-User-Id: 98"

# Send a GET request using cURL and display the response body with the custom header
curl -s -H "$HEADER" "$URL" | head -c 1000 || { echo "Error: Unable to fetch data"; exit 1; }
