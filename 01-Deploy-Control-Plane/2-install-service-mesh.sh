#!/bin/bash
cat istio-installation.yaml
oc create -n istio-system -f istio-installation.yaml