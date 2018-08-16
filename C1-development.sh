#!/usr/bin/env zsh

brew install pyenv
brew install rbenv
brew install nvm
brew cask install java
brew cask install java8

brew install mongodb
brew install redis
brew install elasticsearch
brew install passenger
brew install nginx --with-passenger
brew install sqlite
brew install mysql@5.7
brew install postgresql
brew install imagemagick

echo "# pyenv\neval \"\$(pyenv init -)\"\n" >> ~/.zshrc
echo "# rbenv\neval \"\$(rbenv init -)\"\n" >> ~/.zshrc
echo "# nvm\nexport NVM_DIR=\"\$HOME/.nvm\"\n. \"/usr/local/opt/nvm/nvm.sh\"\n" >> ~/.zshrc
echo "# mysql@5.7\nexport PATH=\"/usr/local/opt/mysql@5.7/bin:\$PATH\"\n" >> ~/.zshrc
source ~/.zshrc
