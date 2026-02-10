#!/usr/bin/env bash
set -x

sudo apt update
sudo apt upgrade

# https://github.com/settings/keys
ssh-keygen -t ed25519 -C "d@nielku.com"
cat ~/.ssh/id_ed25519.pub

echo "Please upload public key to github."

# Tailscale
curl -fsSL https://tailscale.com/install.sh | sh

# https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> ~/.zprofile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential
brew install gcc
brew doctor

brew install curl
brew install wget
brew install tree
