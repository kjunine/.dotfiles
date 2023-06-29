#!/usr/bin/env zsh
set -x

sudo apt install curl
sudo apt install wget
sudo apt install tree

# https://www.lesstif.com/lpt/modern-unix-linux-command-line-119963724.html

# zoxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
echo '# zoxide
export PATH="$HOME/.local/bin:$PATH"
eval "$(zoxide init zsh)"
' >> ~/.zshrc && source ~/.zshrc

# fzf


# https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# https://github.com/99designs/aws-vault
brew install aws-vault
