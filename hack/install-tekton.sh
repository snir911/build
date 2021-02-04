#!/bin/bash

# Copyright The Shipwright Contributors
# 
# SPDX-License-Identifier: Apache-2.0

#
# Installs Tekton Pipelines operator.
#

set -eu

TEKTON_VERSION="${TEKTON_VERSION:-v0.20.1}"

TEKTON_HOST="github.com"
TEKTON_HOST_PATH="tektoncd/pipeline/releases/download"

echo "# Deploying Tekton Pipelines Operator '${TEKTON_VERSION}'"

# https://github.com/tektoncd/pipeline/issues/3452
echo "https://raw.githubusercontent.com/openshift/tektoncd-pipeline/release-${TEKTON_VERSION}/openshift/release/tektoncd-pipeline-${TEKTON_VERSION}.yaml"
kubectl apply \
    --filename="https://raw.githubusercontent.com/openshift/tektoncd-pipeline/release-${TEKTON_VERSION}/openshift/release/tektoncd-pipeline-${TEKTON_VERSION}.yaml" \
    --output="yaml"
