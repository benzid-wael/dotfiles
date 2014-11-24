#!/bin/bash

cd /tmp

# Clean
rm install.sh

wget https://raw.githubusercontent.com/creationix/nvm/v0.11.1/install.sh | bash

source ~/.profile

# Install Node 0.10.33
nvm install 0.10.33

cat << EOF >> ~/.profile

nvm use 0.10.33
EOF

source ~/.profile
