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

# https://github.com/FiloSottile/mkcert
brew install mkcert
brew install nss

# https://github.com/99designs/aws-vault
brew install aws-vault
# https://aws.amazon.com/ko/cli/
brew install awscli

# https://cloud.google.com/sdk/docs/install?hl=ko#mac
brew install google-cloud-sdk
# https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
gcloud components install gke-gcloud-auth-plugin

# https://github.com/caskroom/homebrew-fonts
brew tap homebrew/cask-fonts
brew update
# brew search /^font-/
brew install font-inconsolata
brew install font-fira-code
brew install font-noto-sans-cjk-kr
brew install font-noto-mono
brew install font-roboto
brew install font-roboto-mono
brew install font-meslo-lg-nerd-font
brew install font-hack-nerd-font
