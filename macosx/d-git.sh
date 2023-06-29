#!/usr/bin/env zsh
set -x

# https://github.com/cli/cli#installation
brew install git
brew install gh

cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

echo '# git
alias gfp="gf -p"
alias gcob="gco -b"
alias gcot="gco -t"
' >> ~/.zshrc && source ~/.zshrc
