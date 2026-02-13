#!/usr/bin/env zsh
set -x

brew install vim
# https://github.com/neovim/neovim/wiki/Installing-Neovim
brew install neovim

# https://docs.astronvim.com/
mkdir ~/.config
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim

echo '# vim
export EDITOR=nvim
alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"
' >> ~/.zshrc && source ~/.zshrc

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
# https://github.com/lsd-rs/lsd
brew install lsd
echo '# lsd
unalias ls 2>/dev/null
ls() {
  command lsd "$@"
}
' >> ~/.zshrc && source ~/.zshrc
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

# https://github.com/FiloSottile/mkcert
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
