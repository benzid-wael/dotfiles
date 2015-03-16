#!/bin/bash


OPTS=`getopt -o g --long node-version,global -n 'parse-options' -- "$@"`

eval set -- "$OPTS"

# FIXME Maybe it's better to install only nvm if the node version is not
# specified.
# default node version
NODE_VERSION=0.10.33
GLOBAL=false

### Start getopts code ###
while [ $# -gt 0 ]; do
  case $1 in
    -g | --global)
      GLOBAL=true
      ;;
    --node-version) NODE_VERSION=true ;;
    \?) #unrecognized option - show help
      echo -e \\n"Option -${BOLD}$OPTARG${NORM} not recognized."
      echo -e "Use ${BOLD}$SCRIPT -h${NORM} to see the help documentation."\\n
      exit 2
      ;;
  esac
  shift
done
### End getopts code ###

cd /tmp

# Clean
rm install.sh

curl https://raw.githubusercontent.com/creationix/nvm/v0.11.1/install.sh | bash

source ~/.profile

# Install node
nvm install $NODE_VERSION

cat << EOF >> ~/.profile

nvm use $NODE_VERSION
EOF

if [ "$GLOBAL" == true ]; then
  n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local
fi

source ~/.profile
