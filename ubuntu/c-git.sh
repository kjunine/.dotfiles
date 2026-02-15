#!/usr/bin/env zsh
set -ex
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"
source "${DOTFILES_DIR}/common/helpers.sh"

# ***** WSL ONLY *****
if grep -qi microsoft /proc/version 2>/dev/null; then
  # https://wslutiliti.es/wslu/install.html#ubuntu
  sudo add-apt-repository ppa:wslutilities/wslu
  sudo apt update
  sudo apt install wslu

  append_if_missing '# wslu' ~/.zshrc
  append_if_missing 'export BROWSER=wslview' ~/.zshrc
fi
# ***** WSL ONLY *****

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
# brew install forgit
# https://github.com/jesseduffield/lazygit
is_installed lazygit || brew install lazygit

cp "${DOTFILES_DIR}/common/.gitconfig" ~/.gitconfig
cp "${DOTFILES_DIR}/common/.gitignore_global" ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

append_if_missing '# git' ~/.zshrc
append_if_missing 'alias gfp="gf -p"' ~/.zshrc
append_if_missing 'alias gcob="gco -b"' ~/.zshrc
append_if_missing 'alias gcot="gco -t"' ~/.zshrc

# https://help.gitkraken.com/gitkraken-client/windows-subsystem-for-linux/
