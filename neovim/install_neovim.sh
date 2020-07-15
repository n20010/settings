#!/bin/bash

_CONFIG_DIR="$HOME/.local/share/nvim"

sudo apt install nvim -y

if [ ! -d $_CONFIG_DIR ]; then
    mkdir -p $_CONFIG_DIR
fi

cp ./conf/{init.vim,local_bundles.vim,local_init.vim} $_CONFIG_DIR

### python3 linter

sudo apt install python3-pip
pip3 install flake8 autopep8 black isort
echo 'export PATH=$PATH:$HOME/.local/bin' >> .bash_aliases