#!/usr/bin/env zsh
set -x

brew install openssl readline zlib
pyenv shell 3.10
pyenv install 3.11
pyenv global 3.11
pyenv versions

pyenv exec pip install --upgrade pip
pyenv exec pip install pylint
pyenv exec pip install ipython
# pyenv exec pip install jupyterlab
# pyenv exec pip install awscli
# pyenv exec pip install boto
