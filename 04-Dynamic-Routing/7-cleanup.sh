#!/bin/bash
oc delete -n $BOOKINFO_PROJECT -f destination-rule-all.yaml
oc delete -n $BOOKINFO_PROJECT -f virtual-service-all-v1.yaml