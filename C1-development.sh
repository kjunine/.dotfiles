#!/usr/bin/env zsh

brew install nvm
brew install pyenv
brew install rbenv
brew cask install java

brew install docker docker-machine
brew install mongodb redis elasticsearch
brew install passenger
brew install nginx --with-passenger
brew install sqlite mysql postgresql
brew install go

brew install imagemagick

brew linkapps

echo "\n# nvm\nexport NVM_DIR=~/.nvm\nsource \$(brew --prefix nvm)/nvm.sh" >> ~/.zprofile
echo "\n# pyenv\neval \"\$(pyenv init -)\"" >> ~/.zprofile
echo "\n# rbenv\neval \"\$(rbenv init -)\"" >> ~/.zprofile
source ~/.zprofile

# nvm ls-remote
# pyenv install -l
# rbenv install -l

nvm install 0.10.43
nvm install 4.3.2
nvm alias default 4.3.2

pyenv install 2.7.11
pyenv install 3.5.1
pyenv global 2.7.11 3.5.1

rbenv install 2.3.0
rbenv global 2.3.0

nvm ls
pyenv versions
rbenv versions
