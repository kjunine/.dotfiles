#!/usr/bin/env bash
set -x

xcode-select --install

# https://github.com/settings/keys
ssh-keygen -t ed25519 -C "d@nielku.com"
cat ~/.ssh/id_ed25519.pub

echo "Please upload public key to github."

# https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor

brew install curl
brew install wget
brew install tree

# https://iterm2.com/
brew install iterm2

curl https://github.com/sindresorhus/iterm2-snazzy/raw/main/Snazzy.itermcolors -o ~/Downloads/Snazzy.itermcolors
open ~/Downloads/Snazzy.itermcolors
curl https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Dracula.itermcolors -o ~/Downloads/Dracula.itermcolors
open ~/Downloads/Dracula.itermcolors

echo "Please restart shell."

# Ghostty
brew install ghostty

# Tailscale
# https://tailscale.com/download/mac
brew install tailscale

# Termius
brew install termius

# Alfred
brew install alfred
# Bartender
brew install bartender
# 1Password
brew install 1password
brew install 1password-cli
# Google Chrome
brew install google-chrome
# Google Drive
brew install google-drive
# Obsidian
brew install obsidian
# Mailbird
brew install mailbird
# Telegram
brew install telegram
# Discord
brew install discord

# Mas
brew install mas
mas install 975937182     # Fantastical
mas install 869223134     # KakaoTalk
mas install 419330170     # Moom
mas install 955848755     # Theine
mas install 413965349     # Soulver
mas install 1055273043    # PDF Expert

# Claude
brew install claude
# Gemini
# - Install page as app
# ChatGPT
brew install chatgpt
# Perplexity
mas install 714467650
