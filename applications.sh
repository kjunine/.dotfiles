#!/usr/bin/env zsh

brew bundle applications

# vagrant
vagrant plugin install sahara
vagrant plugin install vagrant-berkshelf --plugin-version 2.0.1
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-aws
