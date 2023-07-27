#!/bin/bash
kind create cluster --name json-cluster
kubectl create deployment json-server-app --image=omar9289/json-server:v1.0.1 --dry-run=client -oyaml > json-server-app.yaml
kubectl create -f json-server-app.yaml 
kubectl get po 
kubectl expose deploy json-server-app --port 3000 --target-port 3000 --name json-server-app
kubectl port-forward svc/json-server-app 3000:3000  