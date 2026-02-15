#!/usr/bin/env zsh
set -ex
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"
source "${DOTFILES_DIR}/common/helpers.sh"

# Git
is_installed git || brew install git
# https://github.com/cli/cli
is_installed gh || brew install gh
# https://github.com/dandavison/delta
is_installed delta || brew install git-delta
# https://github.com/jonas/tig
is_installed tig || brew install tig
# https://github.com/wfxr/forgit
[ -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/forgit ] || git clone https://github.com/wfxr/forgit.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/forgit
is_installed forgit || brew install forgit
# https://github.com/jesseduffield/lazygit
is_installed lazygit || brew install lazygit
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
is_installed gitkraken || brew install gitkraken
is_installed gk || brew install gitkraken-cli

# github
git remote set-url origin git@github.com:kjunine/.dotfiles.git
gh auth login
gh extension install github/gh-copilot --force
append_if_missing 'eval "$(gh copilot alias -- zsh)"' ~/.zshrc

# gitkraken
gk
append_if_missing 'unalias gk' ~/.zshrc
append_if_missing 'unalias gke' ~/.zshrc
