#!/usr/bin/env zsh
set -x

# https://github.com/pyenv/pyenv-installer
brew install pyenv

echo '# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
' >> ~/.zshrc && source ~/.zshrc

pyenv install --list | grep '^ *3\.'
pyenv install 3.12
pyenv global 3.12
pyenv versions

pyenv exec pip install --upgrade pip

# https://github.com/nvm-sh/nvm#install--update-script
brew install nvm

echo '# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh"
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"
' >> ~/.zshrc && source ~/.zshrc

mkdir ~/.nvm
nvm ls-remote
nvm install lts/*
nvm alias default lts/*
nvm use default
nvm ls

npm install -g npm
corepack enable pnpm

# Docker
# https://docs.docker.com/desktop/wsl/
# https://docs.docker.com/engine/install/ubuntu/

# https://github.com/bcicen/ctop
brew install ctop
# https://github.com/jesseduffield/lazydocker
brew install lazydocker

# Claude Code
curl -fsSL https://claude.ai/install.sh | bash
echo '# claude code
export PATH="$HOME/.local/bin:$PATH"
' >> ~/.zshrc && source ~/.zshrc
# Gemini CLI
npm install -g @google/gemini-cli
# Codex
npm i -g @openai/codex
