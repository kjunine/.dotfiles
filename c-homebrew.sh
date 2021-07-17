#!/usr/bin/env bash
set -x

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor

brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

brew update
