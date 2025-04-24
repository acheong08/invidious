#!/bin/bash
kubectl delete configmap --namespace invidious \
  init-script sql-config invidious-companion-config invidious-config
kubectl create configmap init-script \
  --namespace=invidious \
  --from-file=config/init-invidious-db.sh
kubectl create configmap sql-config \
  --namespace=invidious \
  --from-file=config/sql
kubectl create configmap invidious-companion-config \
  --namespace=invidious \
  --from-file=config/companion.toml
kubectl create configmap invidious-config \
  --namespace=invidious \
  --from-file=config/config.yml
