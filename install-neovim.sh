#/bin/sh

# Dependencies
sudo apt-get install libtool libtool-bin autoconf automake cmake g++ pkg-config unzip

git clone https://github.com/neovim/neovim.git
cd neovim

make
make install

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
 
