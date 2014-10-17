#!/usr/bin/env zsh

# rbenv
echo "\n# rbenv\neval \"\$(rbenv init -)\"" >> ~/.zshrc
source ~/.zshrc
rbenv install 2.1.3
rbenv global 2.1.3

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
gem install stove
gem install test-kitchen
gem install foodcritic
gem install knife-solo_data_bag
gem install knife-init
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
