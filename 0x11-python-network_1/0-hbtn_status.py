#!/usr/bin/python3
"""Fetches http://0.0.0.0:5050/status."""
import urllib.request

if __name__ == "__main__":
    url = "http://0.0.0.0:5050/status"
    request = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
    with urllib.request.urlopen(request) as response:
        body = response.read()
        print("Body response:")
        print("\t- type: {}".format(type(body)))
        print("\t- content: {}".format(body))
        print("\t- utf8 content: {}".format(body.decode("utf-8")))
