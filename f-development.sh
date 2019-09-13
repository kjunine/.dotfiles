#!/usr/bin/env zsh

brew install pyenv
brew install rbenv
brew install nvm
brew cask install java

brew tap mongodb/brew
brew install mongodb-community
brew install redis
brew tap elastic/tap
brew install elastic/tap/elasticsearch-full
brew install passenger
brew install nginx
brew install sqlite
brew install mysql
brew install postgresql
brew install imagemagick
brew cask install ngrok
brew cask install aws-vault

echo "# pyenv\neval \"\$(pyenv init -)\"\n" >> ~/.zshrc
echo "# rbenv\neval \"\$(rbenv init -)\"\n" >> ~/.zshrc
echo "# nvm\nexport NVM_DIR=\"\$HOME/.nvm\"\n. \"/usr/local/opt/nvm/nvm.sh\"\n" >> ~/.zshrc
source ~/.zshrc
