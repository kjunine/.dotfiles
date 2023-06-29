#!/usr/bin/env zsh
set -x

mkdir ~/.nvm
pyenv shell 3.10
nvm install 14
pyenv shell --unset
nvm install 16
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
npm install -g tslint
npm install -g csslint
npm install -g sass-lint
# npm install -g @vue/cli
# npm install -g @angular/cli
