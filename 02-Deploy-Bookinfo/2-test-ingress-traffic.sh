#!/bin/bash
# Get Ingress GW URL
GATEWAY_URL=$(oc -n istio-system get route istio-ingressgateway -o jsonpath='{.spec.host}') && echo $GATEWAY_URL

# Confirm the app is accessible from outside the cluster
while true; do sleep 1; curl -s http://${GATEWAY_URL}/productpage | grep -o "<title>.*</title>";done