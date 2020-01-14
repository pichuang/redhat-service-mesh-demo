## Observability

### Get All Routes You Need
```bash
KIALI_URL=$(oc -n istio-system get route kiali -o jsonpath='{.spec.host}') && echo "Kiali URL: https://$KIALI_URL"

JAEGER_URL=$(oc -n istio-system get route jaeger -o jsonpath='{.spec.host}') && echo "Jaeger URL: https://$JAEGER_URL"

GRAFANA_URL=$(oc -n istio-system get route grafana -o jsonpath='{.spec.host}') && echo "Gragana URL: https://$GRAFANA_URL"
```

### Explore Kiali Dashboard

![](../images/03-observability.gif)

### Explore Distributed Tracing - Jaeger

![](../images/03-distributed-tracing.gif)

### Explore Grafana Dashboard for Service Mesh

![](../images/03-grafana.gif)