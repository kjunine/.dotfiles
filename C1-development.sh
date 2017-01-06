#!/usr/bin/env zsh

brew install pyenv
brew install rbenv
brew install nvm
brew cask install java

brew install mongodb redis elasticsearch
brew install passenger
brew install nginx --with-passenger
brew install sqlite mysql postgresql
brew install imagemagick
brew install yarn

brew linkapps

echo "\n# pyenv\neval \"\$(pyenv init -)\"" >> ~/.zprofile
echo "\n# rbenv\neval \"\$(rbenv init -)\"" >> ~/.zprofile
echo "\n# nvm\nexport NVM_DIR=\"\$HOME/.nvm\"\n. \"\$(brew --prefix nvm)/nvm.sh\"" >> ~/.zprofile
source ~/.zprofile
