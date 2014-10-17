#!/usr/bin/env zsh

brew cask install java
brew install pyenv pyenv-pip-rehash
brew install rbenv ruby-build rbenv-gem-rehash
brew install nvm
brew install docker boot2docker

brew linkapps

echo "\n# pyenv\neval \"\$(pyenv init -)\"" >> ~/.zshrc
source ~/.zshrc
pyenv install 3.4.1
pyenv install 2.7.8
pyenv global 3.4.1

echo "\n# rbenv\neval \"\$(rbenv init -)\"" >> ~/.zshrc
source ~/.zshrc
rbenv install 2.1.3
rbenv global 2.1.3

echo "\n# nvm\nsource \$(brew --prefix nvm)/nvm.sh" >> ~/.zshrc
source ~/.zshrc
nvm install 0.10
nvm alias default 0.10

pyenv versions
rbenv versions
nvm ls
