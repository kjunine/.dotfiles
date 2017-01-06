#!/usr/bin/env bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor

brew tap homebrew/science
brew tap homebrew/versions

brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts

brew update

brew cask

brew install mas
