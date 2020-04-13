#!/bin/bash
cat servicemeshmemberroll-default.yaml
oc apply -n istio-system -f servicemeshmemberroll-default.yaml
