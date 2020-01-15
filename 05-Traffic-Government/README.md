## Prerequisite

將所有流量都導流到任意版本

```bash
oc apply -n $BOOKINFO_PROJECT -f destination-rule-all.yaml
oc apply -n $BOOKINFO_PROJECT -f virtual-service-reviews-all.yaml
```

![](../images/05-all-traffic-pass.png)

## 流量負載均衡能力

現行 Load Balancer Settings 支援下列 2 大種類，8 種用法:

1. [simple][1]
   1. ROUND_ROBIN
   2. LEAST_CONN
   3. RANDOM
   4. PASSTHROUGH
2. [consistentHash][2]
   1. httpHeaderName
   2. httpCookie
   3. useSourceIp
   4. minimumRingSize

### Round-Robin 模式

Round-Robin 是預設模式

```bash
cat destination-rule-reviews-round-robin.yaml
oc apply -n $BOOKINFO_PROJECT -f destination-rule-reviews-round-robin.yaml
```

![](../images/05-government-rr.png)

### Random 模式

```bash
cat destination-rule-reviews-random.yaml
oc apply -n $BOOKINFO_PROJECT -f destination-rule-reviews-random.yaml
```

![](../images/05-government-random.png)

### 會話保持
```bash
cat destination-rule-reviews-random.yaml
oc apply -n $BOOKINFO_PROJECT -f destination-rule-session-sticky.yaml
```

## Clean Up
```bash
oc delete -n $BOOKINFO_PROJECT -f destination-rule-all.yaml
oc delete -n $BOOKINFO_PROJECT -f virtual-service-reviews-all.yaml
```

[1]: https://istio.io/docs/reference/config/networking/destination-rule/#LoadBalancerSettings-SimpleLB
[2]: https://istio.io/docs/reference/config/networking/destination-rule/#LoadBalancerSettings-ConsistentHashLB