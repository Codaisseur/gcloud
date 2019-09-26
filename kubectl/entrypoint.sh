#!/bin/sh
set -e

export KUBECONFIG=${GITHUB_WORKSPACE}/.kube/config
mkdir -p $(dirname $KUBECONFIG)

gcloud config set project "$CLOUDSDK_CORE_PROJECT"
gcloud config set container/use_client_certificate True
gcloud services enable container.googleapis.com
gcloud container clusters get-credentials "$CLOUDSDK_CONTAINER_CLUSTER" --zone "$CLOUDSDK_COMPUTE_ZONE"

sh -c "kubectl $*"
