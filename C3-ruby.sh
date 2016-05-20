#!/usr/bin/env zsh

rbenv install -l
rbenv install 2.3.1
rbenv global 2.3.1
rbenv versions

rbenv exec gem update -f
rbenv exec gem install rake
rbenv exec gem install bundler
rbenv exec gem install pry
rbenv exec gem install pry-doc
rbenv exec gem install iruby
rbenv exec gem install compass
rbenv exec gem install rails
rbenv exec gem install cocoapods

# rbenv exec gem install chef
# rbenv exec gem install chef-zero
# rbenv exec gem install knife-solo
# rbenv exec gem install knife-ec2
# rbenv exec gem install berkshelf
# rbenv exec gem install stove
# rbenv exec gem install test-kitchen
# rbenv exec gem install foodcritic
# rbenv exec gem install knife-solo_data_bag
# rbenv exec gem install knife-init

# rbenv exec gem install tugboat
# rbenv exec gem install thor
# rbenv exec gem install jekyll
# rbenv exec gem install middleman
# rbenv exec gem install github
# rbenv exec gem install travis
# rbenv exec gem install travis-lint
