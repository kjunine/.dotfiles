#!/usr/bin/env bash

brew install zsh
brew install antigen
brew install vim
brew install neovim
brew install git
brew install git-flow
brew install git-lfs
brew install tmux
brew install node
brew install python
brew install ruby
brew install fasd
brew install fzf

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
ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf
cp ~/.tmux/.tmux.conf.local ~
gem install tmuxinator

echo "Please restart shell."
