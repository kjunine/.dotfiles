#!/usr/bin/env zsh

brew bundle development

# pyenv
echo "\n# pyenv\neval \"\$(pyenv init -)\"" >> ~/.zshrc
source ~/.zshrc
pyenv install 3.4.1
pyenv install 2.7.8
pyenv global 3.4.1

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
pip install awscli
pip install boto
pip install ipython
pip install howdoi
pip install httpie

# gem
gem update -f
gem install rake
gem install bundler
gem install pry
gem install pry-doc
gem install chef
gem install chef-zero
gem install knife-solo
gem install knife-ec2
gem install berkshelf
gem install tugboat
gem install iruby
gem install thor
gem install compass
gem install jekyll
gem install middleman
gem install cocoapods
gem install github
gem install travis
gem install travis-lint

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
