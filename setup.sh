#!/bin/bash

git clone https://github.com/kakiang/setup-linux-machine.git && cd setup-linux-machine
./install_python_node.sh
./install_zsh.sh
./install_vim.sh

ln -sf $HOME/.vim/vimrc $HOME/.vimrc
cd $HOME/.vim && git submodule update --init
