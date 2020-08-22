sudo apt remove vim vim-runtime gvim -y

sudo apt install libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python3-dev ruby-dev git -y

cd ~
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=$(python3-config --configdir) \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local
make VIMRUNTIMEDIR=/usr/local/share/vim/vim82
sudo apt install checkinstall -y
cd ~/vim
sudo make install
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim

sudo apt install neovim nano -y && cd ~/ && git clone --recursive https://github.com/kakiang/.vim .vim && \
ln -sf $HOME/.vim/vimrc $HOME/.vimrc && cd $HOME/.vim && git submodule update --init

cd ~/.vim/bundle && git clone https://github.com/sainnhe/sonokai.git

curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

