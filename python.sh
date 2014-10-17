#!/usr/bin/env zsh

# pyenv
echo "\n# pyenv\neval \"\$(pyenv init -)\"" >> ~/.zshrc
source ~/.zshrc
pyenv install 3.4.1
pyenv install 2.7.8
pyenv global 3.4.1

# pip
pip install awscli
pip install boto
pip install ipython
pip install howdoi
pip install httpie
pip install pylint

# python 2.7.8
pyenv shell 2.7.8
pip install fabric
pyenv shell --unset
