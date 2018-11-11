#!/bin/bash

kubectl create namespace hello
kubectl -n hello apply -f crd.yaml
kubectl -n hello apply -f controller.yaml
kubectl -n hello create configmap hello-controller --from-file=sync.py
kubectl -n hello apply -f webhook.yaml
kubectl -n hello apply -f hello.yaml

