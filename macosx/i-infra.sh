#!/usr/bin/env zsh
set -x

# https://docs.docker.com/desktop/install/mac-install/

# https://github.com/ahmetb/kubectx
brew install kubectx

# https://kustomize.io/
brew install kustomize

# https://helm.sh/
brew install helm
# https://github.com/databus23/helm-diff
helm plugin install https://github.com/databus23/helm-diff
# https://github.com/jkroepke/helm-secrets
helm plugin install https://github.com/jkroepke/helm-secrets

# https://github.com/99designs/aws-vault
brew install aws-vault
# https://aws.amazon.com/ko/cli/
brew install awscli

# https://cloud.google.com/sdk/docs/install?hl=ko#mac
brew install google-cloud-sdk
# https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
gcloud components install gke-gcloud-auth-plugin
