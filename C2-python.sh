#!/usr/bin/env zsh

pyenv install -l
pyenv install 2.7.15
pyenv install 3.7.0
pyenv global 2.7.15 3.7.0
pyenv versions
