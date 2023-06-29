#!/usr/bin/env zsh
set -x

# https://github.com/nvm-sh/nvm#install--update-script
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

echo '# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
' >> ~/.zshrc && source ~/.zshrc

mkdir ~/.nvm
nvm install 18
nvm alias default 18
nvm use default
nvm ls

nvm use default
npm install -g npm
npm install -g node-gyp
npm install -g http-server
npm install -g wait-on

npm install -g typescript
npm install -g eslint
npm install -g csslint
npm install -g sass-lint
# npm install -g @vue/cli
# npm install -g @angular/cli
