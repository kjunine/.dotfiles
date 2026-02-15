#!/usr/bin/env bash
set -ex
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"
source "${DOTFILES_DIR}/common/helpers.sh"

sudo apt update
sudo apt upgrade

# https://github.com/settings/keys
ssh-keygen -t ed25519 -C "d@nielku.com"
cat ~/.ssh/id_ed25519.pub

# Tailscale
is_installed tailscale || curl -fsSL https://tailscale.com/install.sh | sh

# https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
append_if_missing 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' ~/.zprofile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential
brew_install gcc
brew doctor

brew_install curl
brew_install wget
brew_install tree
