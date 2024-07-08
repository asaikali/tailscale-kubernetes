#!/bin/bash

set +x

# Bold formatting
bold=$(tput bold)
normal=$(tput sgr0)

# Check Helm release status
echo "========================================"
echo "HELM RELEASE STATUS: tailscale-operator"
echo "========================================"
echo "${bold}helm status tailscale-operator --namespace tailscale${normal}"
helm status tailscale-operator --namespace tailscale
echo ""

# Check Kubernetes resources in tailscale namespace
echo "============================================="
echo "KUBERNETES RESOURCES IN NAMESPACE: tailscale"
echo "============================================="
echo "${bold}kubectl get all -n tailscale${normal}"
kubectl get all -n tailscale
echo ""