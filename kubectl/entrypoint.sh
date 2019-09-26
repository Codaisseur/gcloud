#!/bin/sh
set -e

export KUBECONFIG=${GITHUB_WORKSPACE}/.kube/config
mkdir -p $(dirname $KUBECONFIG)

sh -c "gcloud config set project ${CLOUDSDK_CORE_PROJECT}"
sh -c "gcloud container clusters get-credentials ${CLOUDSDK_CONTAINER_CLUSTER} --zone ${CLOUDSDK_COMPUTE_ZONE}"

sh -c "kubectl $*"
