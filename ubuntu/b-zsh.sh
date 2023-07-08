#!/usr/bin/env bash
set -x

# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
brew install zsh
echo "/home/linuxbrew/.linuxbrew/bin/zsh" | sudo tee -a /etc/shells
chsh -s /home/linuxbrew/.linuxbrew/bin/zsh

# https://github.com/ohmyzsh/ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# https://github.com/romkatv/powerlevel10k#installation
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i'.bak' 's+ZSH_THEME="robbyrussell"+ZSH_THEME="powerlevel10k/powerlevel10k"+g' ~/.zshrc

echo '# etc
export LANG=en_US.UTF-8
' >> ~/.zshrc

echo "Please restart shell."
