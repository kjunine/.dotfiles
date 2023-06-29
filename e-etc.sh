#!/usr/bin/env zsh
set -x

# etc
# https://www.lesstif.com/lpt/modern-unix-linux-command-line-119963724.html

# zoxide
echo "# zoxide\neval \"\$(zoxide init zsh)\"\n" >> ~/.zshrc
brew install zoxide

# fzf
echo "# fzf\n" >> ~/.zshrc
$(brew --prefix)/opt/fzf/install
brew install fzf

# ripgrep
brew install rg

# brew install fasd
# brew install ag
# brew install ack

# brew install tig
# brew install jq
# brew install asciinema
# brew install neofetch
# brew install lnav

brew install mkcert
brew install nss

# https://github.com/caskroom/homebrew-fonts
brew tap homebrew/cask-fonts
brew update
# brew search /^font-/
brew install font-inconsolata
brew install font-fira-code
brew install font-noto-sans-cjk-kr
brew install font-noto-mono
brew install font-roboto
brew install font-roboto-mono
brew install font-meslo-lg-nerd-font
brew install font-hack-nerd-font

# https://github.com/sindresorhus/quick-look-plugins
# brew install qlcolorcode
# brew install qlstephen
# brew install qlmarkdown
# brew install quicklook-json
# brew install qlimagesize
# brew install qlvideo
# brew install suspicious-package
# brew install betterzip
