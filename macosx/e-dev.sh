#!/usr/bin/env zsh
set -x

# https://github.com/pyenv/pyenv
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

# https://github.com/nvm-sh/nvm
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
# https://docs.docker.com/desktop/install/mac-install/
# brew install docker

# Claude Code
curl -fsSL https://claude.ai/install.sh | bash
echo '# claude code
export PATH="$HOME/.local/bin:$PATH"
' >> ~/.zshrc && source ~/.zshrc
# Gemini CLI
npm install -g @google/gemini-cli
# Codex
# https://developers.openai.com/codex/app/
npm i -g @openai/codex

# Visual Studio Code
brew install visual-studio-code
# Cursor
brew install cursor
# Antigravity
brew install antigravity

# Warp
brew install warp
