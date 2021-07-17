#!/usr/bin/env zsh
set -x

pyenv install 3.9.6
pyenv global 3.9.6
pyenv versions

pyenv exec pip install --upgrade pip
pyenv exec pip install awscli
pyenv exec pip install boto
pyenv exec pip install ipython
pyenv exec pip install pylint
