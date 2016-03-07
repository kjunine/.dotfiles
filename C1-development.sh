#!/usr/bin/env zsh

brew install nvm
brew install pyenv pyenv-pip-rehash
brew install rbenv ruby-build rbenv-gem-rehash
brew install docker docker-machine
brew install mongodb redis elasticsearch
brew install nginx passenger
brew install sqlite mysql postgresql
brew install go

brew install jq
brew tap peco/peco
brew install peco

brew install imagemagick

brew cask install java

brew linkapps

echo "\n# nvm\nexport NVM_DIR=~/.nvm\nsource \$(brew --prefix nvm)/nvm.sh" >> ~/.zprofile
echo "\n# pyenv\neval \"\$(pyenv init -)\"" >> ~/.zprofile
echo "\n# rbenv\neval \"\$(rbenv init -)\"" >> ~/.zprofile
source ~/.zprofile

# nvm ls-remote
# pyenv install -l
# rbenv install -l

# nvm install 4.3.2
# nvm alias default 4.3.2

# pyenv install 3.5.1
# pyenv global 3.5.1

# rbenv install 2.3.0
# rbenv global 2.3.0

# nvm ls
# pyenv versions
# rbenv versions
