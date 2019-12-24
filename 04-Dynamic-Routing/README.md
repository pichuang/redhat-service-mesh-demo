## Prerequisite

Pass all traffics to v1 services

```bash
oc apply -n $BOOKINFO_PROJECT -f destination-rule-all.yaml
oc apply -n $BOOKINFO_PROJECT -f virtual-service-all-v1.yaml
```

![](../images/04-traffics-all-v1.png)


## 


## Clean Up
```bash
oc delete -n $BOOKINFO_PROJECT -f destination-rule-all.yaml
oc delete -n $BOOKINFO_PROJECT -f virtual-service-all-v1.yaml
```