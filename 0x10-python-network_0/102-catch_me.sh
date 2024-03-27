#!/bin/bash

# Generate a request body that triggers the server response
REQUEST_BODY=$(printf "{ \"action\": \"catch_me\" }\n")

# Temporarily write the request body to a file
mktemp temp_req.XXXXXX
echo "$REQUEST_BODY" > "${temp_req}.tmp"

# Send a POST request using curl and display the response body
curl -s -X POST -H "Content-Type: application/json" -d @"${temp_req}".tmp 0.0.0.0:5000/catch_me | head -c 1000

# Remove the temporary file
rm "${temp_req}".tmp
