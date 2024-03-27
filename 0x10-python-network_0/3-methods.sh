#!/bin/bash

# Check if a URL was provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

# Assign the first argument as the URL
URL="$1"

# Iterate through common HTTP methods and print the response for each method
for METHOD in HEAD GET POST PUT DELETE OPTIONS TRACE CONNECT; do
    RESPONSE=$(curl -s -I -w "%{http_code}\n" -o /dev/null -X "$METHOD" "$URL")
    STATUS_CODE=$(echo "$RESPONSE" | tail -n 1)
    
    # Display the method and its corresponding status code
    echo "Method: $METHOD Status Code: $STATUS_CODE"
done
