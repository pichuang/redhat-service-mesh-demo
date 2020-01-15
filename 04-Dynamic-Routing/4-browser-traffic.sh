#!/bin/bash
cat virtual-service-reviews-chrome.yaml
oc apply -n $BOOKINFO_PROJECT -f virtual-service-reviews-chrome.yaml