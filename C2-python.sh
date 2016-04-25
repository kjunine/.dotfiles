#!/usr/bin/env zsh

pyenv install -l
pyenv install 2.7.11
pyenv install 3.5.1
pyenv global 2.7.11 3.5.1
pyenv versions

pyenv exec pip install --upgrade pip
pyenv exec pip3 install --upgrade pip
pyenv exec pip3 install awscli
pyenv exec pip3 install boto
pyenv exec pip3 install ipython
pyenv exec pip3 install howdoi
pyenv exec pip3 install httpie
pyenv exec pip3 install pylint
pyenv exec pip3 install fabric
