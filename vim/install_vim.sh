#! /bin/sh -x

# See: http://www.davidxia.com/2012/03/how-to-install-vim-7-3-on-ubuntu-10-04-with-ruby-and-python-support/

sudo apt-get remove vim-common vim-runtime vim-gtk vim-gui-common
sudo apt-get build-dep vim

# Compile Vim with python2 support
# If you want to enable ruby support add  --enable-rubyinterp to configure
# command
cd /tmp
hg clone https://vim.googlecode.com/hg/ vim
cd vim
./configure --enable-pythoninterp
make
sudo make install
