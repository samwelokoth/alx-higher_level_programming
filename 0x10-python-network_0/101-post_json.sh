#!/bin/bash

# Check if a URL and a file were provided as arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 url file"
    exit 1
fi

# Assign the first argument as the URL
URL="$1"

# Assign the second argument as the file path
FILE="$2"

# Read the file contents
CONTENTS=$(cat "$FILE")

# Send a POST request using curl and display the response body
curl -s -X POST -H "Content-Type: application/json" -d "$CONTENTS" "$URL" | head -c 1000
