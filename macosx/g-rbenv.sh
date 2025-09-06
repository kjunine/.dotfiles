#!/usr/bin/env zsh
set -x

# https://github.com/rbenv/rbenv
brew install rbenv

echo '# rbenv
eval "$(rbenv init - zsh)"
' >> ~/.zshrc && source ~/.zshrc

rbenv install 3.4.1
rbenv global 3.4.1
rbenv versions

rbenv exec gem update
rbenv exec gem install rake
rbenv exec gem install bundler
rbenv exec gem install pry

# pry
echo '# pry
Pry.config.pager = false
' >> ~/.pryrc
