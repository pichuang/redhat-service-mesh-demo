#!/bin/bash
cat servicemeshmemberroll-default.yaml
oc create -n istio-system -f servicemeshmemberroll-default.yaml