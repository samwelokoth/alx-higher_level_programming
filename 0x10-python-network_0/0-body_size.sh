#!/bin/bash

url="$1"
if [[ -z "$url" ]]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

response=$(curl -sI -o /dev/null -w "%{size_download}" "$url")
echo "Size of the body of the response: ${response} bytes"
