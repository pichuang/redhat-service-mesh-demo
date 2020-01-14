#!/bin/bash

BOOKINFO_PROJECT="${1:-bookinfo}"

oc delete -n $BOOKINFO_PROJECT -f https://raw.githubusercontent.com/istio/istio/$ISTIO_RELEASE/samples/bookinfo/networking/bookinfo-gateway.yaml
oc delete -n $BOOKINFO_PROJECT -f https://raw.githubusercontent.com/istio/istio/$ISTIO_RELEASE/samples/bookinfo/platform/kube/bookinfo.yaml
oc delete project $BOOKINFO_PROJECT