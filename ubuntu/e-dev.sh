#!/usr/bin/env zsh
set -ex
DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"
source "${DOTFILES_DIR}/common/helpers.sh"

# https://github.com/pyenv/pyenv-installer
is_installed pyenv || brew install pyenv

append_if_missing '# pyenv' ~/.zshrc
append_if_missing 'export PYENV_ROOT="$HOME/.pyenv"' ~/.zshrc
append_if_missing 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' ~/.zshrc
append_if_missing 'eval "$(pyenv init -)"' ~/.zshrc

pyenv install --list | grep '^ *3\.'
pyenv install 3.12
pyenv global 3.12
pyenv versions

pyenv exec pip install --upgrade pip

# https://github.com/nvm-sh/nvm#install--update-script
is_installed nvm || brew install nvm

append_if_missing '# nvm' ~/.zshrc
append_if_missing 'export NVM_DIR="$HOME/.nvm"' ~/.zshrc
append_if_missing '[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh"' ~/.zshrc
append_if_missing '[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"' ~/.zshrc

mkdir -p ~/.nvm
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
is_installed ctop || brew install ctop
# https://github.com/jesseduffield/lazydocker
is_installed lazydocker || brew install lazydocker

# Claude Code
is_installed claude-code || curl -fsSL https://claude.ai/install.sh | bash
append_if_missing '# claude code' ~/.zshrc
append_if_missing 'export PATH="$HOME/.local/bin:$PATH"' ~/.zshrc
# Gemini CLI
npm list -g @google/gemini-cli >/dev/null 2>&1 || npm install -g @google/gemini-cli
# Codex
npm list -g @openai/codex >/dev/null 2>&1 || npm i -g @openai/codex
