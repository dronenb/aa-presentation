#!/bin/bash
kubectl port-forward --namespace=minecraft service/minecraft-service 25565:25565
