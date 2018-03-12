#!/usr/bin/env bash

brew install zsh antigen
brew install vim nvim
brew install git git-flow git-lfs
brew install tmux
brew install node python ruby
brew install fasd
brew install fzf

brew linkapps

# zsh
cp .zshrc ~/.zshrc

echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh

# vim
ln -s /usr/local/bin/vim /usr/local/bin/vi
curl -sLf https://spacevim.org/install.sh | bash

# git
cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# tmux
git clone https://github.com/gpakosz/.tmux.git ~/.tmux
ln -s -f .tmux/.tmux.conf ~/.tmux.conf
cp .tmux/.tmux.conf.local ~
gem install tmuxinator

echo "Please restart shell."
