#!/bin/bash

./install_python_node.sh
./install_zsh.sh
./install_vim.sh

ln -sf $HOME/.vim/vimrc $HOME/.vimrc
