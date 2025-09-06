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
brew install forgit
# https://github.com/jesseduffield/lazygit
brew install lazygit
# https://github.com/djui/alias-tips
git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips

cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

echo '# git
alias gfp="gf -p"
alias gcob="gco -b"
alias gcot="gco -t"
' >> ~/.zshrc && source ~/.zshrc

# https://www.gitkraken.com/
brew install gitkraken
brew install gitkraken-cli

# github
git remote set-url origin git@github.com:kjunine/.dotfiles.git
gh auth login
gh extension install github/gh-copilot --force
echo 'eval "$(gh copilot alias -- zsh)"' >> ~/.zshrc

# gitkraken
gk
echo 'unalias gk
unalias gke
' >> ~/.zshrc && source ~/.zshrc
