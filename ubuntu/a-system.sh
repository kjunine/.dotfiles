#!/usr/bin/env bash
set -x

sudo apt update
sudo apt upgrade

# https://github.com/settings/keys
ssh-keygen -t ed25519 -C "d@nielku.com"
cat ~/.ssh/id_ed25519.pub

echo "Please upload public key to github."
