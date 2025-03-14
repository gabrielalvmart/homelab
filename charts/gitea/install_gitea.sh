#! /bin/sh

set -exuo pipefail

kubectl get namespace gitea || kubectl create namespace gitea


helm repo add gitea-charts https://dl.gitea.io/charts/
helm repo update

helm install gitea gitea-charts/gitea -f ./gitea-values.yaml

echo "all done!"