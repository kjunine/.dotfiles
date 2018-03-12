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
brew install fswatch

brew linkapps

echo "\n# pyenv\neval \"\$(pyenv init -)\"" >> ~/.zshrc
echo "\n# rbenv\neval \"\$(rbenv init -)\"" >> ~/.zshrc
echo "\n# nvm\nexport NVM_DIR=\"\$HOME/.nvm\"\n. \"/usr/local/opt/nvm/nvm.sh\"" >> ~/.zshrc
source ~/.zshrc
