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

is_installed curl || brew install curl
is_installed wget || brew install wget
is_installed tree || brew install tree

# https://iterm2.com/
is_installed iterm2 || brew install iterm2

curl https://github.com/sindresorhus/iterm2-snazzy/raw/main/Snazzy.itermcolors -o ~/Downloads/Snazzy.itermcolors
open ~/Downloads/Snazzy.itermcolors
curl https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Dracula.itermcolors -o ~/Downloads/Dracula.itermcolors
open ~/Downloads/Dracula.itermcolors

# Ghostty
is_installed ghostty || brew install ghostty

# Tailscale
# https://tailscale.com/download/mac
is_installed tailscale || brew install tailscale

# Termius
is_installed termius || brew install termius

# Alfred
is_installed alfred || brew install alfred
# Bartender
is_installed bartender || brew install bartender
# 1Password
is_installed 1password || brew install 1password
is_installed op || brew install 1password-cli
# Google Chrome
is_installed google-chrome || brew install google-chrome
# Google Drive
is_installed google-drive || brew install google-drive
# Obsidian
is_installed obsidian || brew install obsidian
# Mailbird
is_installed mailbird || brew install mailbird
# Telegram
is_installed telegram || brew install telegram
# Discord
is_installed discord || brew install discord

# Mas
is_installed mas || brew install mas
mas install 975937182     # Fantastical
mas install 869223134     # KakaoTalk
mas install 419330170     # Moom
mas install 955848755     # Theine
mas install 413965349     # Soulver
mas install 1055273043    # PDF Expert

# Claude
is_installed claude || brew install claude
# Gemini
# - Install page as app
# ChatGPT
is_installed chatgpt || brew install chatgpt
# Perplexity
mas install 714467650
