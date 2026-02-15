#!/usr/bin/env zsh
set -ex
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"
source "${DOTFILES_DIR}/common/helpers.sh"

# Git
brew_install git
# https://github.com/cli/cli
brew_install gh
# https://github.com/dandavison/delta
brew_install git-delta
# https://github.com/jonas/tig
brew_install tig
# https://github.com/wfxr/forgit
[ -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/forgit ] || git clone https://github.com/wfxr/forgit.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/forgit
brew_install forgit
# https://github.com/jesseduffield/lazygit
brew_install lazygit
# https://github.com/djui/alias-tips
[ -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips ] || git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips

cp "${DOTFILES_DIR}/common/.gitconfig" ~/.gitconfig
cp "${DOTFILES_DIR}/common/.gitignore_global" ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

append_if_missing '# git' ~/.zshrc
append_if_missing 'alias gfp="gf -p"' ~/.zshrc
append_if_missing 'alias gcob="gco -b"' ~/.zshrc
append_if_missing 'alias gcot="gco -t"' ~/.zshrc

# https://www.gitkraken.com/
brew_install gitkraken
brew_install gitkraken-cli

# github
git remote set-url origin git@github.com:kjunine/.dotfiles.git
gh auth login
gh extension install github/gh-copilot --force
append_if_missing 'eval "$(gh copilot alias -- zsh)"' ~/.zshrc

# gitkraken
gk
append_if_missing 'unalias gk' ~/.zshrc
append_if_missing 'unalias gke' ~/.zshrc
