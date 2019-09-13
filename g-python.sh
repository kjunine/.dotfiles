#!/usr/bin/env zsh

pyenv install 2.7.16
pyenv install 3.7.4
pyenv global 2.7.16 3.7.4
pyenv versions

pyenv exec pip install --upgrade pip
pyenv exec pip3 install --upgrade pip
pyenv exec pip3 install awscli
pyenv exec pip3 install boto
pyenv exec pip3 install ipython
pyenv exec pip3 install pylint
