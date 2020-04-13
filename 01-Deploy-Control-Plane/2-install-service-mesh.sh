#!/bin/bash
cat istio-installation.yaml
oc apply -n istio-system -f istio-installation.yaml
