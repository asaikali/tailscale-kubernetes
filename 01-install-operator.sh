# helm upgrade [RELEASE] [CHART] [flags]
helm upgrade tailscale-operator tailscale-operator \
  --install \
  --repo https://pkgs.tailscale.com/helmcharts \
  --namespace=tailscale \
  --create-namespace \
  --set-string oauth.clientId=${TS_CLIENT_ID} \
  --set-string oauth.clientSecret=${TS_CLIENT_SECRET} \
  --set-string operatorConfig.hostname="local-k8s" \
  --wait 
