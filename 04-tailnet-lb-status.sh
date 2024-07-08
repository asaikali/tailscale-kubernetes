#!/bin/bash

# Bold formatting
bold=$(tput bold)
normal=$(tput sgr0)

echo "====================================================="
echo "Checking what's running in the tailnet-lb namespace"
echo "====================================================="
echo "${bold}kubectl get all -n tailnet-lb${normal}"
kubectl get all -n tailnet-lb

echo ""
echo "===================================================================================="
echo "Checking what's running in the tailscale namespace"
echo "You should see a new pod matching the name of the service created: ts-nginx-service"
echo "===================================================================================="
echo "${bold}kubectl get all -n tailscale${normal}"
kubectl get all -n tailscale