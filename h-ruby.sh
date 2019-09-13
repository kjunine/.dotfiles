#!/usr/bin/env zsh

rbenv install 2.6.4
rbenv global 2.6.4
rbenv versions

rbenv exec gem update -f
rbenv exec gem install rake
rbenv exec gem install bundler
rbenv exec gem install pry
rbenv exec gem install iruby
rbenv exec gem install rails

# pry
cp .pryrc ~/.pryrc
