#!/usr/bin/env zsh
set -x

# https://github.com/rbenv/rbenv#basic-git-checkout
brew install rbenv

echo '# rbenv
eval "$(~/.rbenv/bin/rbenv init - zsh)"
' >> ~/.zshrc && source ~/.zshrc

# https://github.com/rbenv/ruby-build#readme
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
# git -C "$(rbenv root)"/plugins/ruby-build pull
sudo apt install autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev

rbenv install 3.2.2
rbenv global 3.2.2
rbenv versions

rbenv exec gem update
rbenv exec gem install rake
rbenv exec gem install bundler
rbenv exec gem install pry

# pry
echo '# pry
Pry.config.pager = false
' >> ~/.pryrc
