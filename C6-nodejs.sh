#!/usr/bin/env zsh

mkdir ~/.nvm
source ~/.zshrc
nvm ls-remote
nvm install 6
nvm install 8
nvm alias default 6
nvm use default
nvm ls
