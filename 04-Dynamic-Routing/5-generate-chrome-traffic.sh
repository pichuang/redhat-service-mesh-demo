#!/bin/bash
# If the user-agent is Chrome
while true; do sleep 1; curl -A "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36" -s http://${GATEWAY_URL}/productpage | grep -o "color=\"red\"";done