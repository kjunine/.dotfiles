#!/usr/bin/env zsh
set -x

# pyenv
brew install pyenv
echo "# pyenv\nexport PYENV_ROOT=\"\$HOME/.pyenv\"
command -v pyenv >/dev/null || export PATH=\"\$PYENV_ROOT/bin:\$PATH\"
eval \"\$(pyenv init -)\"\n" >> ~/.zshrc
source ~/.zshrc

# rbenv
brew install rbenv
echo "# rbenv\neval \"\$(rbenv init - zsh)\"\n" >> ~/.zshrc
source ~/.zshrc

# nvm
brew install nvm

echo "# nvm\nexport NVM_DIR=\"\$HOME/.nvm\"
[ -s \"/opt/homebrew/opt/nvm/nvm.sh\" ] && \. \"/opt/homebrew/opt/nvm/nvm.sh\"
[ -s \"/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm\" ] && \. \"/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm\"\n" >> ~/.zshrc
source ~/.zshrc

# aws-vault
brew install aws-vault

# brew install go
# brew install java

# brew install nginx
# brew install sqlite
# brew tap mongodb/brew
# brew install mongodb-community
# brew install redis
# brew tap elastic/tap
# brew install elasticsearch-full
# brew install mysql
# brew install postgresql
# brew install imagemagick

