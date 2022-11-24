#!/usr/bin/env zsh
set -x

rbenv install 3.1.2
rbenv global 3.1.2
rbenv versions

rbenv exec gem update
rbenv exec gem install rake
rbenv exec gem install bundler
rbenv exec gem install pry
# rbenv exec gem install iruby
# rbenv exec gem install rails

# pry
cp .pryrc ~/.pryrc
