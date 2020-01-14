#!/bin/bash

KIALI_URL=$(oc -n istio-system get route kiali -o jsonpath='{.spec.host}') && echo "Kiali URL: https://$KIALI_URL"

JAEGER_URL=$(oc -n istio-system get route jaeger -o jsonpath='{.spec.host}') && echo "Jaeger URL: https://$JAEGER_URL"

GRAFANA_URL=$(oc -n istio-system get route grafana -o jsonpath='{.spec.host}') && echo "Grafana URL: https://$GRAFANA_URL"