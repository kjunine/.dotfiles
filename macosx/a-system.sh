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

# https://iterm2.com/
brew install iterm2

curl https://github.com/sindresorhus/iterm2-snazzy/raw/main/Snazzy.itermcolors -o ~/Downloads/Snazzy.itermcolors
open ~/Downloads/Snazzy.itermcolors
curl https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Dracula.itermcolors -o ~/Downloads/Dracula.itermcolors
open ~/Downloads/Dracula.itermcolors

echo "Please restart shell."
