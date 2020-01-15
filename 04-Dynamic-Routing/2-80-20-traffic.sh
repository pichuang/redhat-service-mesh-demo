#!/bin/bash
cat virtual-service-reviews-80-20.yaml
oc apply -n $BOOKINFO_PROJECT -f virtual-service-reviews-80-20.yaml