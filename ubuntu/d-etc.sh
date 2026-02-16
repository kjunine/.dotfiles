#!/usr/bin/env zsh
set -ex
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"
source "${DOTFILES_DIR}/common/helpers.sh"

# Vim
brew_install vim
# https://github.com/neovim/neovim/wiki/Installing-Neovim
brew_install neovim

# https://docs.astronvim.com/
# mkdir ~/.config
[ -d ~/.config/nvim ] || git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim

append_if_missing '# vim' ~/.zshrc
append_if_missing 'export EDITOR=nvim' ~/.zshrc
append_if_missing 'alias vim="nvim"' ~/.zshrc
append_if_missing 'alias vi="nvim"' ~/.zshrc
append_if_missing 'alias vimdiff="nvim -d"' ~/.zshrc

# Tmux
brew_install tmux
cp "${DOTFILES_DIR}/common/.tmux.conf" ~/.tmux.conf
if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# https://github.com/sxyazi/yazi
brew_install yazi
mkdir -p ~/.config/yazi
cp "${DOTFILES_DIR}/common/yazi/"*.toml ~/.config/yazi/

# https://www.lesstif.com/lpt/modern-unix-linux-command-line-119963724.html

# https://github.com/tldr-pages/tldr
brew_install tldr
# https://github.com/ajeetdsouza/zoxide
brew_install zoxide
append_if_missing '# zoxide' ~/.zshrc
append_if_missing 'eval "$(zoxide init zsh)"' ~/.zshrc
# https://github.com/junegunn/fzf
brew_install fzf
append_if_missing '# fzf' ~/.zshrc
$(brew --prefix)/opt/fzf/install
append_block_if_missing "rfzf" 'rfzf() {
  rg --line-number --no-heading "${1:-.}" | fzf --preview '\''bat --color=always {1} --highlight-line {2}'\'' --delimiter ":"
}' ~/.zshrc
# https://github.com/sharkdp/bat
brew_install bat
# https://github.com/lsd-rs/lsd
brew_install lsd
append_block_if_missing "lsd" 'unalias ls 2>/dev/null || true
ls() {
  command lsd "$@"
}' ~/.zshrc
# https://github.com/Canop/broot
brew_install broot
append_if_missing '# broot' ~/.zshrc
broot --set-install-state installed 2>/dev/null || true
# https://github.com/sharkdp/fd
brew_install fd
# https://github.com/ggreer/the_silver_searcher
brew_install ag
# https://github.com/BurntSushi/ripgrep
brew_install rg
# https://github.com/chmln/sd
brew_install sd
# https://github.com/mikefarah/yq
brew_install yq
# https://jqlang.github.io/jq/download/
brew_install jq
# https://lnav.org/
brew_install lnav
# https://github.com/dalance/procs
brew_install procs
# https://github.com/bootandy/dust
brew_install dust
# https://github.com/muesli/duf
brew_install duf
# https://github.com/ClementTsang/bottom
brew_install bottom
