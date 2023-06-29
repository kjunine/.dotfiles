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

# yq
brew install yq
# jq
brew install jq

# https://github.com/99designs/aws-vault
brew install aws-vault
