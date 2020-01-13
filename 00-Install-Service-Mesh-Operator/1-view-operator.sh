#!/bin/bash
oc get packagemanifests {servicemeshoperator,kiali-ossm,jaeger-product,elasticsearch-operator} -n openshift-marketplace