#!/bin/bash
cat virtual-service-reviews-v2.yaml
oc apply -n $BOOKINFO_PROJECT -f virtual-service-reviews-v2.yaml