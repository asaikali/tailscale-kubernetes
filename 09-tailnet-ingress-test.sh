#!/bin/bash

INGRESS_HOSTNAME=$(kubectl get ingress nginx -n tailnet-ingress -o jsonpath='{.status.loadBalancer.ingress[0].hostname}' )

# Bold formatting
bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}Ingress host name is ${INGRESS_HOSTNAME}${normal}" 
echo "${bold}Notice that the ingress is running TLS and the cert is issued by Let's Encrypt${normal}"
echo "${bold}curl -v https://${INGRESS_HOSTNAME}${normal}"

curl -v https://${INGRESS_HOSTNAME}