#!/usr/bin/env zsh
set -x

# https://github.com/pyenv/pyenv
brew install pyenv

echo '# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
' >> ~/.zshrc && source ~/.zshrc

pyenv install 3.12
pyenv global 3.12
pyenv versions

pyenv exec pip install --upgrade pip
pyenv exec pip install pylint
pyenv exec pip install ipython
pyenv exec pip install jupyterlab
