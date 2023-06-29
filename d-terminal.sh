#!/usr/bin/env bash
set -x

brew install curl
brew install wget
brew install tree

# iterm2
brew install iterm2
brew install zsh
echo "/opt/homebrew/bin/zsh" | sudo tee -a /etc/shells
chsh -s  /opt/homebrew/bin/zsh

curl https://github.com/sindresorhus/iterm2-snazzy/raw/main/Snazzy.itermcolors -o ~/Downloads/Snazzy.itermcolors
open ~/Downloads/Snazzy.itermcolors
curl https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Dracula.itermcolors -o ~/Downloads/Dracula.itermcolors
open ~/Downloads/Dracula.itermcolors

echo "Please restart shell."

# zsh
#brew install zsh
#echo "/opt/homebrew/bin/zsh" | sudo tee -a /etc/shells
#chsh -s  /opt/homebrew/bin/zsh

# https://github.com/ohmyzsh/ohmyzsh#basic-installation
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# https://github.com/romkatv/powerlevel10k#oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

brew install gnu-sed
gsed -i'.bak' 's+ZSH_THEME="robbyrussell"+ZSH_THEME="powerlevel10k/powerlevel10k"+g' ~/.zshrc

echo "# etc\nexport LANG=en_US.UTF-8\n" >> ~/.zshrc

# vim
brew install vim
brew install neovim

# https://spacevim.org/quick-start-guide/#linux-and-macos
mkdir ~/.config
curl -sLf https://spacevim.org/install.sh | bash

echo "# vim\nexport EDITOR=nvim\nalias vim=\"nvim\"\nalias vi=\"nvim\"\n" >> ~/.zshrc


# git
brew install git
brew install gh
# brew install git-flow
# brew install git-lfs

cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
