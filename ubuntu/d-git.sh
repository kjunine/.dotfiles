#!/usr/bin/env zsh
set -x

# https://wslutiliti.es/wslu/install.html#ubuntu
sudo add-apt-repository ppa:wslutilities/wslu
sudo apt update
sudo apt install wslu

echo '# wslu
export BROWSER=wslview
' >> ~/.zshrc && source ~/.zshrc

brew install git
# https://github.com/cli/cli
brew install gh
# https://github.com/dandavison/delta
brew install git-delta
# https://github.com/jonas/tig
brew install tig

cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

echo '# git
alias gfp="gf -p"
alias gcob="gco -b"
alias gcot="gco -t"
' >> ~/.zshrc && source ~/.zshrc
