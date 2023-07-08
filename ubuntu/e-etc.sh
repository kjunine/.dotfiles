#!/usr/bin/env zsh
set -x

# https://www.lesstif.com/lpt/modern-unix-linux-command-line-119963724.html

# https://github.com/tldr-pages/tldr
brew install tldr
# https://github.com/ajeetdsouza/zoxide
brew install zoxide
echo '# zoxide
eval "$(zoxide init zsh)"
' >> ~/.zshrc && source ~/.zshrc
# https://github.com/junegunn/fzf
brew install fzf
echo "# fzf" >> ~/.zshrc && $(brew --prefix)/opt/fzf/install && echo "\n" && source ~/.zshrc
# https://github.com/sharkdp/bat
brew install bat
# https://github.com/ogham/exa
brew install exa
# https://github.com/lsd-rs/lsd
brew install lsd
# https://github.com/Canop/broot
brew install broot
echo "# broot" >> ~/.zshrc && broot && echo "\n" && source ~/.zshrc
# https://github.com/sharkdp/fd
brew install fd
# https://github.com/ggreer/the_silver_searcher
brew install ag
# https://github.com/BurntSushi/ripgrep
brew install rg
# https://github.com/chmln/sd
brew install sd
# https://github.com/mikefarah/yq
brew install yq
# https://jqlang.github.io/jq/download/
brew install jq
# https://lnav.org/
brew install lnav
# https://github.com/dalance/procs
brew install procs
# https://github.com/bootandy/dust
brew install dust
# https://github.com/muesli/duf
brew install duf
# https://github.com/ClementTsang/bottom
brew install bottom
