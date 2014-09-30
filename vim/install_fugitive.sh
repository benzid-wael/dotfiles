#!/bin/bash

#
# Best git interface for Vim
#

cd ~/.vim/bundle && \
    git clone git://github.com/tpope/vim-fugitive.git && \
    vim -u NONE -c "helptags vim-fugitive/doc" -c q
