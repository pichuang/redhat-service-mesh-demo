#!/bin/bash
while true; do sleep 1; curl -s http://${GATEWAY_URL}/productpage | grep -o "color=\"black\"";done