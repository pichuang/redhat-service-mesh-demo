#!/bin/bash
oc get smcp -n istio-system
oc get deployment,pods -n istio-system