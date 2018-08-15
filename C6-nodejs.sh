#!/usr/bin/env zsh

mkdir ~/.nvm
source ~/.zshrc
nvm ls-remote
nvm install 6
nvm install 8
nvm alias default 8
nvm use default
nvm ls
