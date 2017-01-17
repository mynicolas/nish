#!/bin/bash
cp ./nish /usr/local/bin/
cp ./nish-db /usr/local/bin/
if [ ! -d ~/ssh-server ]; then
    mkdir ~/ssh-server
fi
