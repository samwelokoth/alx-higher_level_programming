#!/bin/bash

# Check if a URL was provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

# Assign the first argument as the URL
URL="$1"

# Define custom headers
HEADER="Content-Type: application/json\nemail: test@gmail.com\nsubject: I will always be here for PLD"

# Prepare the JSON payload
JSON_PAYLOAD='{"key":"value"}'

# Send a POST request using cURL with custom headers and display the response body
curl -s -H "$HEADER" -d "$JSON_PAYLOAD" "$URL" | head -c 1000 || { echo "Error: Unable to post data"; exit 1; }
