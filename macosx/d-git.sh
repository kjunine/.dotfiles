#!/usr/bin/env zsh
set -x

brew install git
# https://github.com/cli/cli
brew install gh
# https://github.com/dandavison/delta
brew install git-delta
# https://github.com/jonas/tig
brew install tig
# https://github.com/wfxr/forgit
git clone https://github.com/wfxr/forgit.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/forgit
# brew install forgit
# https://github.com/jesseduffield/lazygit
brew install lazygit

cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

echo '# git
alias gfp="gf -p"
alias gcob="gco -b"
alias gcot="gco -t"
' >> ~/.zshrc && source ~/.zshrc
