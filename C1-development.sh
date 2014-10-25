#!/usr/bin/env zsh

brew cask install java
brew install pyenv pyenv-pip-rehash
brew install rbenv ruby-build rbenv-gem-rehash
brew install nvm
brew install docker boot2docker
brew install mongodb redis

brew install jq
brew tap peco/peco
brew install peco

brew linkapps

echo "\n# pyenv\neval \"\$(pyenv init -)\"" >> ~/.zshrc
echo "\n# rbenv\neval \"\$(rbenv init -)\"" >> ~/.zshrc
echo "\n# nvm\nsource \$(brew --prefix nvm)/nvm.sh" >> ~/.zshrc
source ~/.zshrc

pyenv install 3.4.1
pyenv install 2.7.8
pyenv global 3.4.1

rbenv install 2.1.3
rbenv global 2.1.3

nvm install 0.10
nvm alias default 0.10

pyenv versions
rbenv versions
nvm ls
