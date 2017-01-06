#!/usr/bin/env bash

xcode-select --install

ssh-keygen -t rsa -C "d@nielku.com"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub

echo "Please upload public key to github and restart shell."
