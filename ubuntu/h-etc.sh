#!/usr/bin/env zsh
set -x

sudo apt install curl
sudo apt install wget
sudo apt install tree

# https://www.lesstif.com/lpt/modern-unix-linux-command-line-119963724.html

# https://github.com/ajeetdsouza/zoxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
echo '# zoxide
export PATH="$HOME/.local/bin:$PATH"
eval "$(zoxide init zsh)"
' >> ~/.zshrc && source ~/.zshrc

# https://github.com/junegunn/fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
echo "# fzf" >> ~/.zshrc && ~/.fzf/install && source ~/.zshrc

# https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> ~/.zprofile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential
brew install gcc
brew doctor

# https://github.com/mikefarah/yq#macos--linux-via-homebrew
brew install yq
# https://jqlang.github.io/jq/download/
brew install jq

# https://kustomize.io/
brew install kustomize

# https://helm.sh/
brew install helm
# https://github.com/databus23/helm-diff
helm plugin install https://github.com/databus23/helm-diff
# https://github.com/jkroepke/helm-secrets/wiki/Installation
helm plugin install https://github.com/jkroepke/helm-secrets

# https://github.com/99designs/aws-vault
brew install aws-vault
# https://aws.amazon.com/ko/cli/
brew install awscli
