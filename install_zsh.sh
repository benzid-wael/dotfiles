#!/bin/bash

sudo apt-get install zsh git-core

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

chsh -s `which zsh`

cat << EOF >> ~/.zshrc

plugins=(git autopep8 bower colorize cp django docker history jira mercurial nvm npm virtualenvwrapper command-not-found jsontools python sud
    o node fabric screen)

EOF

sudo shutdown -r 0
