## Observability

### Get Kiali Routes
```bash
KIALI_URL=$(oc -n istio-system get route kiali -o jsonpath='{.spec.host}') && echo $KIALI_URL
```

### Explore Kiali Dashboard

![](../images/03-observability.gif)