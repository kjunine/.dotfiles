#!/usr/bin/env zsh
set -x

brew install vim
# https://github.com/neovim/neovim/wiki/Installing-Neovim
brew install neovim

# https://docs.astronvim.com/
mkdir ~/.config
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim

echo '# vim
export EDITOR=nvim
alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"
' >> ~/.zshrc && source ~/.zshrc
