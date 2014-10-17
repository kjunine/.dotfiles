#!/usr/bin/env zsh

pip install awscli
pip install boto
pip install ipython
pip install howdoi
pip install httpie
pip install pylint

pyenv shell 2.7.8
pip install fabric
pyenv shell --unset
