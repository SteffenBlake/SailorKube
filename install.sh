#!/bin/bash
export TOOLSREPO="https://github.com/SteffenBlake/HandyK3OSTools/archive/refs/heads/main.tar.gz"

function get-tools() {
    sudo -v
    sudo mkdir /temp
    sudo wget $TOOLSREPO -O /temp/main.tar.gz
    sudo tar xvf /temp/main.tar.gz -C ~/ --strip-components=2
    sudo rm -R /temp
    sudo chmod 755 ~/

    echo "Tools fetched, re-login to reload them"
}
