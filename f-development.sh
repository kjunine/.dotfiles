#!/usr/bin/env zsh
set -x

brew install pyenv
brew install rbenv
brew install nvm
brew install go
brew install java

brew install nginx
brew install sqlite
brew install aws-vault
# brew tap mongodb/brew
# brew install mongodb-community
# brew install redis
# brew tap elastic/tap
# brew install elasticsearch-full
# brew install mysql
# brew install postgresql
# brew install imagemagick

echo "# pyenv\nexport PYENV_ROOT=\"\$HOME/.pyenv\"\nexport PATH=\"\$PYENV_ROOT/bin:\$PATH\"\neval \"\$(pyenv init --path)\"\neval \"\$(pyenv init -)\"\n" >> ~/.zshrc
echo "# rbenv\neval \"\$(rbenv init -)\"\n" >> ~/.zshrc
echo "# nvm\nexport NVM_DIR=\"\$HOME/.nvm\"\n. \"/usr/local/opt/nvm/nvm.sh\"\n" >> ~/.zshrc
source ~/.zshrc
