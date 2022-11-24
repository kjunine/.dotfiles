#!/usr/bin/env zsh
set -x

pyenv install 3.11.0
pyenv global 3.11.0
pyenv versions

pyenv exec pip install --upgrade pip
pyenv exec pip install pylint
pyenv exec pip install ipython
pyenv exec pip install jupyterlab
# pyenv exec pip install awscli
# pyenv exec pip install boto
