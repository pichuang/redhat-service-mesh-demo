#!/bin/bash

# Ref
# Red Hat OpenShift Service Mesh 1.1.2
# https://docs.openshift.com/container-platform/4.4/service_mesh/service_mesh_install/installing-ossm.html#ossm-operator-install-kiali_installing-ossm

oc apply -f create-project-openshift-operators-redhat.yaml
oc apply -f elasticsearch-operator-subscription.yaml
oc apply -f jaeger-product-operator-subscription.yaml
oc apply -f kiali-ossm-operator-subscription.yaml
oc apply -f servicemesh-operator-subscription.yaml
