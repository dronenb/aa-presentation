#!/bin/bash

# Bootstrap the minikube cluster
echo "y" | ./bootstrap_mac.sh

# Deploy minecraft to it
kubectl kustomize manifests | kubectl apply -f - --namespace=minecraft

# Wait til it works
watch kubectl get all --namespace=minecraft
