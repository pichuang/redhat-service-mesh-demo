#!/bin/bash

BOOKINFO_PROJECT="${1:-bookinfo}"
ISTIO_RELEASE="1.4.3" # Get Istio Latest Release Version

# Setup Project name
echo "The project name is $BOOKINFO_PROJECT"

# Create Project
oc new-project $BOOKINFO_PROJECT

# TODO: Condition
# Add project into service mesh member
oc get smmr default -n istio-system -o json --export | jq '.spec.members += ["'"$BOOKINFO_PROJECT"'"]' | oc apply -n istio-system -f -

# Apply bookinfo
oc apply -n $BOOKINFO_PROJECT -f https://raw.githubusercontent.com/istio/istio/$ISTIO_RELEASE/samples/bookinfo/platform/kube/bookinfo.yaml

# Patch sidecar annotation into template in deployment object
for deployment in $(oc get deployments -o jsonpath='{.items[*].metadata.name}' -n $BOOKINFO_PROJECT);do
    oc -n $BOOKINFO_PROJECT patch deployment $deployment -p '{"spec":{"template":{"metadata":{"annotations":{"sidecar.istio.io/inject": "true"}}}}}'
done

# Apply bookinfo gateway
oc apply -n $BOOKINFO_PROJECT -f https://raw.githubusercontent.com/istio/istio/$ISTIO_RELEASE/samples/bookinfo/networking/bookinfo-gateway.yaml