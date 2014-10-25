#!/usr/bin/env zsh

vagrant plugin install sahara
vagrant plugin install vagrant-aws
vagrant plugin install vagrant-berkshelf --plugin-version 2.0.1
vagrant plugin install vagrant-omnibus

vagrant box add dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box
