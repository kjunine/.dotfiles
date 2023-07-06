#!/usr/bin/env zsh
set -x

# https://www.lesstif.com/lpt/modern-unix-linux-command-line-119963724.html

# https://github.com/tldr-pages/tldr
brew install tldr
# https://github.com/ajeetdsouza/zoxide
brew install zoxide
echo '# zoxide
eval "$(zoxide init zsh)"
' >> ~/.zshrc && source ~/.zshrc
# https://github.com/junegunn/fzf
brew install fzf
echo "# fzf\n" >> ~/.zshrc && $(brew --prefix)/opt/fzf/install && source ~/.zshrc
# https://github.com/sharkdp/bat
brew install bat
# https://github.com/ogham/exa
brew install exa
# https://github.com/lsd-rs/lsd
brew install lsd
# https://github.com/Canop/broot
brew install broot
echo "# broot\n" >> ~/.zshrc && broot && source ~/.zshrc
# https://github.com/sharkdp/fd
brew install fd
# https://github.com/ggreer/the_silver_searcher
brew install ag
# https://github.com/BurntSushi/ripgrep
brew install rg
# https://github.com/chmln/sd
brew install sd
# https://github.com/mikefarah/yq
brew install yq
# https://jqlang.github.io/jq/download/
brew install jq
# https://lnav.org/
brew install lnav
# https://github.com/dalance/procs
brew install procs
# https://github.com/bootandy/dust
brew install dust
# https://github.com/muesli/duf
brew install duf
# https://github.com/ClementTsang/bottom
brew install bottom

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
