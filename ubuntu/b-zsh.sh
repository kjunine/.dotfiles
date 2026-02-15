#!/usr/bin/env bash
set -ex
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"
source "${DOTFILES_DIR}/common/helpers.sh"

# Zsh
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
brew_install zsh
grep -qF "/home/linuxbrew/.linuxbrew/bin/zsh" /etc/shells || echo "/home/linuxbrew/.linuxbrew/bin/zsh" | sudo tee -a /etc/shells
chsh -s /home/linuxbrew/.linuxbrew/bin/zsh

# https://github.com/ohmyzsh/ohmyzsh
[ -d ~/.oh-my-zsh ] || sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# https://starship.rs/
brew_install starship
append_if_missing '# starship' ~/.zshrc
append_if_missing 'eval "$(starship init zsh)"' ~/.zshrc

append_if_missing '# etc' ~/.zshrc
append_if_missing 'export LANG=en_US.UTF-8' ~/.zshrc
