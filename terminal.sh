#!/usr/bin/env bash

brew bundle terminal

# zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

cp .zshrc ~/.zshrc

echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh

# git
cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# vim
cp .vimrc ~/.vimrc
ln -s /usr/local/bin/vim /usr/local/bin/vi
