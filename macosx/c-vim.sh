#!/usr/bin/env zsh
set -x

brew install vim
# https://github.com/neovim/neovim/wiki/Installing-Neovim
brew install neovim

# https://spacevim.org/quick-start-guide/
mkdir ~/.config
curl -sLf https://spacevim.org/install.sh | bash
# ln -s ~/.SpaceVim ~/.config/nvim

echo '# vim
export EDITOR=nvim
alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"
' >> ~/.zshrc && source ~/.zshrc
