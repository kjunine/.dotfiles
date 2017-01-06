#!/usr/bin/env zsh

# https://github.com/caskroom/homebrew-fonts
# brew cask search /^font-/
brew cask install font-inconsolata font-noto-sans-cjk-kr font-roboto font-roboto-mono

# https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

brew linkapps
