#!/usr/bin/env bash
set -ex
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"
source "${DOTFILES_DIR}/common/helpers.sh"

xcode-select -p &>/dev/null || xcode-select --install

# https://github.com/settings/keys
ssh-keygen -t ed25519 -C "d@nielku.com"
cat ~/.ssh/id_ed25519.pub

# https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor

brew_install curl
brew_install wget
brew_install tree

# https://iterm2.com/
brew_install iterm2

curl https://github.com/sindresorhus/iterm2-snazzy/raw/main/Snazzy.itermcolors -o ~/Downloads/Snazzy.itermcolors
open ~/Downloads/Snazzy.itermcolors
curl https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Dracula.itermcolors -o ~/Downloads/Dracula.itermcolors
open ~/Downloads/Dracula.itermcolors

# Ghostty
brew_install ghostty

# Tailscale
# https://tailscale.com/download/mac
brew_install tailscale

# Termius
brew_install termius

# Alfred
brew_install alfred
# Bartender
brew_install bartender
# 1Password
brew_install 1password
brew_install 1password-cli
# Google Chrome
brew_install google-chrome
# Google Drive
brew_install google-drive
# Obsidian
brew_install obsidian
# Mailbird
brew_install mailbird
# Telegram
brew_install telegram
# Discord
brew_install discord

# Mas
brew_install mas
mas install 975937182     # Fantastical
mas install 869223134     # KakaoTalk
mas install 419330170     # Moom
mas install 955848755     # Theine
mas install 413965349     # Soulver
mas install 1055273043    # PDF Expert

# Claude
brew_install claude
# Gemini
# - Install page as app
# ChatGPT
brew_install chatgpt
# Perplexity
mas install 714467650
