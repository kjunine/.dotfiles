#!/usr/bin/env zsh

brew install dos2unix
brew install autossh
brew install tree curl wget
brew install hub
brew install tig
brew install jq
brew install asciinema
brew install neofetch
brew install lnav
brew cask install ngrok

# https://github.com/caskroom/homebrew-fonts
# brew cask search /^font-/
brew cask install font-inconsolata font-noto-sans-cjk-kr font-roboto font-roboto-mono font-hack-nerd-font

# https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

brew linkapps
