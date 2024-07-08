LB_HOSTNAME=$(kubectl get service nginx-service -o jsonpath='{.status.loadBalancer.ingress[0].hostname}' -n tailnet-lb)
echo "LoadBalance is host name is ${LB_HOSTNAME}" 
echo "curl  ${LB_HOSTNAME}"

curl  http://${LB_HOSTNAME}