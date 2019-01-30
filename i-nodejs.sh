#!/usr/bin/env zsh

mkdir ~/.nvm
source ~/.zshrc
nvm install 10
nvm alias default 10
nvm use default
nvm ls

nvm use default
npm install -g npm
npm install -g node-gyp

npm install -g webpack-cli
npm install -g coffeescript
npm install -g typescript
npm install -g typings
npm install -g eslint
npm install -g jshint
npm install -g coffeelint
npm install -g tslint
npm install -g csslint
npm install -g sass-lint
npm install -g http-server
npm install -g wait-on
npm install -g vue-cli
npm install -g @angular/cli
