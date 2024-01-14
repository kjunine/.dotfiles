#!/usr/bin/env zsh
set -x

# https://github.com/nvm-sh/nvm
brew install nvm

echo '# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh"
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"
' >> ~/.zshrc && source ~/.zshrc

mkdir ~/.nvm
nvm install 20
nvm alias default 20
nvm use default
nvm ls

nvm use default
npm install -g npm
npm install -g pnpm
npm install -g serve
npm install -g wait-on
npm install -g ttab
