#!/bin/bash

VIRTUALENV_DIR=~/virtualenvs

sudo apt-get install python-setuptools python-dev build-essential git-core libpq-dev -y

sudo easy_install pip
sudo pip install virtualenv
sudo pip install virtualenvwrapper

if [ ! -d $VIRTUALENV_DIR ]; then
    mkdir $VIRTUALENV_DIR
fi

cat << EOF >> ~/.dotfilesrc

export WORKON_HOME=$VIRTUALENV_DIR
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$VIRTUALENV_DIR
EOF
