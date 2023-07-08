#!/usr/bin/env zsh
set -x

# https://docs.docker.com/desktop/wsl/

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

# https://cloud.google.com/sdk/docs/install?hl=ko#deb
sudo apt-get install apt-transport-https ca-certificates gnupg curl sudo
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update && sudo apt-get install google-cloud-cli
# https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
