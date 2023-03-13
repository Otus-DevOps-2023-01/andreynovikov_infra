#!/bin/bash

if ! [ -x "$(command -v git)" ]; then
    sudo apt install git -y
fi

cd ~
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
