#!/usr/bin/env zsh
set -ex
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"
source "${DOTFILES_DIR}/common/helpers.sh"

# Vim
is_installed vim || brew install vim
# https://github.com/neovim/neovim/wiki/Installing-Neovim
is_installed nvim || brew install neovim

# https://docs.astronvim.com/
mkdir -p ~/.config
[ -d ~/.config/nvim ] || git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim

append_if_missing '# vim' ~/.zshrc
append_if_missing 'export EDITOR=nvim' ~/.zshrc
append_if_missing 'alias vim="nvim"' ~/.zshrc
append_if_missing 'alias vi="nvim"' ~/.zshrc
append_if_missing 'alias vimdiff="nvim -d"' ~/.zshrc

# Tmux
is_installed tmux || brew install tmux
cp "${DOTFILES_DIR}/common/.tmux.conf" ~/.tmux.conf
if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# https://github.com/sxyazi/yazi
is_installed yazi || brew install yazi
mkdir -p ~/.config/yazi
cp "${DOTFILES_DIR}/common/yazi/"*.toml ~/.config/yazi/

# https://www.lesstif.com/lpt/modern-unix-linux-command-line-119963724.html

# https://github.com/tldr-pages/tldr
is_installed tldr || brew install tldr
# https://github.com/ajeetdsouza/zoxide
is_installed zoxide || brew install zoxide
append_if_missing '# zoxide' ~/.zshrc
append_if_missing 'eval "$(zoxide init zsh)"' ~/.zshrc
# https://github.com/junegunn/fzf
is_installed fzf || brew install fzf
append_if_missing '# fzf' ~/.zshrc
$(brew --prefix)/opt/fzf/install
# https://github.com/sharkdp/bat
is_installed bat || brew install bat
# https://github.com/lsd-rs/lsd
is_installed lsd || brew install lsd
append_block_if_missing "lsd" 'unalias ls 2>/dev/null || true
ls() {
  command lsd "$@"
}' ~/.zshrc
# https://github.com/Canop/broot
is_installed broot || brew install broot
append_if_missing '# broot' ~/.zshrc
broot --set-install-state installed 2>/dev/null || true
# https://github.com/sharkdp/fd
is_installed fd || brew install fd
# https://github.com/ggreer/the_silver_searcher
is_installed ag || brew install ag
# https://github.com/BurntSushi/ripgrep
is_installed rg || brew install rg
# https://github.com/chmln/sd
is_installed sd || brew install sd
# https://github.com/mikefarah/yq
is_installed yq || brew install yq
# https://jqlang.github.io/jq/download/
is_installed jq || brew install jq
# https://lnav.org/
is_installed lnav || brew install lnav
# https://github.com/dalance/procs
is_installed procs || brew install procs
# https://github.com/bootandy/dust
is_installed dust || brew install dust
# https://github.com/muesli/duf
is_installed duf || brew install duf
# https://github.com/ClementTsang/bottom
is_installed btm || brew install bottom

# https://github.com/FiloSottile/mkcert
is_installed mkcert || brew install mkcert
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
