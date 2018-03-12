#!/usr/bin/env zsh

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

nvm ls-remote
nvm install 6
nvm install 8
nvm alias default 6
nvm use default
nvm ls
