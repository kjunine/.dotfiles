#!/usr/bin/env bash
set -x

# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
brew install zsh
echo "/home/linuxbrew/.linuxbrew/bin/zsh" | sudo tee -a /etc/shells
chsh -s /home/linuxbrew/.linuxbrew/bin/zsh

# https://github.com/ohmyzsh/ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# https://starship.rs/
brew install starship
echo '# starship
eval "$(starship init zsh)"
' >> ~/.zshrc

echo '# etc
export LANG=en_US.UTF-8
' >> ~/.zshrc
