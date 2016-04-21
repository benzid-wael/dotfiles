#!/bin/sh


# install required packages for python
sudo apt-get install build-essential zlib1g-dev libbz2-dev libssl-dev libreadline-dev libncurses5-dev libsqlite3-dev libgdbm-dev libdb-dev libexpat-dev libpcap-dev liblzma-dev libpcre3-dev -y


# installing pythonz
curl -kL https://raw.githubusercontent.com/saghul/pythonz/master/pythonz-install | bash


# shell configuration for pythonz
cat << EOF >> ~/.dotfilesrc

# pythonz
[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc
EOF

cat << EOF

Congrats ! pythonz is now installed, you can go ahead and install some Python versions:

$ pythonz install 2.7.3
$ pythonz install -t stackless 2.7.2
$ pythonz install -t jython 2.5.2
$ pythonz install -t pypy --url https://bitbucket.org/pypy/pypy/downloads/pypy-1.8-osx64.tar.bz2 1.8

You can also create some virtualenvs (using virtualenvwrapper) to use the installed pythons:

$ mkvirtualenv -p \$(pythonz locate 2.7.2) cpython272 && deactivate
$ mkvirtualenv -p \$(pythonz locate -t stackless 2.7.2) stackless272 && deactivate
$ mkvirtualenv -p \$(pythonz locate -t jython 2.5.2) jython252 && deactivate
$ mkvirtualenv -p \$(pythonz locate -t pypy 2.3.1) pypy231 && deactivate

Enjoy it :)

EOF
