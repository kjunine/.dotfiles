#!/usr/bin/env zsh

rbenv install 2.4.2
rbenv global 2.4.2
rbenv versions

rbenv exec gem update -f
rbenv exec gem install rake
rbenv exec gem install bundler
rbenv exec gem install pry
rbenv exec gem install pry-doc
rbenv exec gem install iruby
rbenv exec gem install rails
rbenv exec gem install cocoapods

# pry
cp .pryrc ~/.pryrc
