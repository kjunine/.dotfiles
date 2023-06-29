#!/usr/bin/env zsh
set -x

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

brew install curl
brew install wget
brew install tree

# https://www.lesstif.com/lpt/modern-unix-linux-command-line-119963724.html

# zoxide
brew install zoxide
echo '# zoxide
eval "$(zoxide init zsh)"
' >> ~/.zshrc && source ~/.zshrc

# fzf
brew install fzf
echo "# fzf\n" >> ~/.zshrc && $(brew --prefix)/opt/fzf/install && source ~/.zshrc

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

# https://github.com/FiloSottile/mkcert
brew install mkcert
brew install nss

# aws-vault
brew install aws-vault
