#!/bin/bash

curl https://raw.githubusercontent.com/kakiang/setup-linux-machine/master/install_python_node.sh | sh
curl https://raw.githubusercontent.com/kakiang/setup-linux-machine/master/install_zsh.sh | sh
curl https://raw.githubusercontent.com/kakiang/setup-linux-machine/master/install_vim.sh | sh

ln -sf $HOME/.vim/vimrc $HOME/.vimrc
cd $HOME/.vim && git submodule update --init
