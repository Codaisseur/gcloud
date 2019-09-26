#!/bin/sh
set -e

gcloud config set project "$CLOUDSDK_CORE_PROJECT"
gcloud config set container/use_client_certificate True
gcloud container clusters get-credentials "$CLOUDSDK_CONTAINER_CLUSTER" --zone "$CLOUDSDK_COMPUTE_ZONE"

sh -c "kubectl $*"
