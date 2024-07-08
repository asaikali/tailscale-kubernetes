#!/bin/bash

# Bold formatting
bold=$(tput bold)
normal=$(tput sgr0)

echo "=========================================================="
echo "Checking what's running in the tailnet-funnel namespace"
echo "=========================================================="
echo "${bold}kubectl get all -n tailnet-funnel${normal}"
kubectl get all,ingress -n tailnet-funnel

echo ""
echo "===================================================================================="
echo "Checking what's running in the tailscale namespace"
echo "You should see a new pod matching the name of the ingress created: ts-nginx"
echo "===================================================================================="
echo "${bold}kubectl get all -n tailscale${normal}"
kubectl get all -n tailscale


echo "Check the tailscale admin console, there should be a new machine called foo corsponding to the ingress"

# echo ""
# echo "===================================================================================="
# echo "Checking the status of the tailscale network, you sholud see a new machine "
# echo "called foo show up in the tailnet"
# echo "===================================================================================="
# echo "${bold}tailscale status${normal}"
# tailscale status