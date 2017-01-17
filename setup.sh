#!/bin/bash
cp ./nish /usr/local/bin/
cp ./nish-db /usr/local/bin/
cp ./config ~/.ssh/
if [ ! -d ~/.ssh/socks ]; then
    mkdir ~/.ssh/socks
fi
if [ ! -d ~/ssh-server ]; then
    mkdir ~/ssh-server
fi
