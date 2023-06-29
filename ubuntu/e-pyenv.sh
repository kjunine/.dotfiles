#!/usr/bin/env zsh
set -x

# https://github.com/pyenv/pyenv-installer
curl https://pyenv.run | bash

echo '# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
' >> ~/.zshrc && source ~/.zshrc

pyenv install 3.11
pyenv global 3.11
pyenv versions

pyenv exec pip install --upgrade pip
pyenv exec pip install pylint
pyenv exec pip install ipython
pyenv exec pip install jupyterlab
