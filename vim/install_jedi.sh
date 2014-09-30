#!/bin/bash

#
# Using the jedi autocompletion library for VIM.
#

cd ~/.vim/bundle/; \
    git clone git://github.com/davidhalter/jedi-vim.git; \
    cd jedi-vim; \
    git submodule update --init

cd ~/.vim/bundle/; \
    git clone git://github.com/ervandew/supertab.git

# Configure SuperTab
echo 'let g:SuperTabDefaultCompletionType = "context"' >> ~/.vimrc

# Enable the menu and pydoc preview
# that gives us the ability to hit <leader>pw when our cursor is on a module
# and have a new window open with the whole documentation page for it.
echo 'set completeopt=menuone,longest,preview' >> ~/.vimrc
