#!/usr/bin/env zsh

brew bundle development

# pyenv
echo "\n# pyenv\neval \"\$(pyenv init -)\"" >> ~/.zshrc
source ~/.zshrc
pyenv install 3.4.1
pyenv install 2.7.7
pyenv global 2.7.7

# rbenv
echo "\n# rbenv\neval \"\$(rbenv init -)\"" >> ~/.zshrc
source ~/.zshrc
rbenv install 2.1.2
rbenv global 2.1.2

# nvm
echo "\n# nvm\nsource \$(brew --prefix nvm)/nvm.sh" >> ~/.zshrc
source ~/.zshrc
nvm install 0.10
nvm alias default 0.10

# pip
pip install ipython

# gem
gem update -f
gem install rake
gem install bundler
gem install pry
gem install pry-doc

# npm
npm install -g yo
npm install -g bower
npm install -g grunt-cli
npm install -g locally
npm install -g coffee-script
npm install -g mocha
npm install -g node-inspector
npm install -g jshint
npm install -g csslint
npm install -g coffeelint
npm install -g docpad
npm install -g gitbook
