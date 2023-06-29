#!/usr/bin/env zsh
set -x

rbenv install 3.2.2
rbenv global 3.2.2
rbenv versions

rbenv exec gem update
rbenv exec gem install rake
rbenv exec gem install bundler
rbenv exec gem install pry

# pry
cp .pryrc ~/.pryrc
