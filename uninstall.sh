#!/bin/bash
#pip uninstall tinydb
#pip uninstall prettytable
rm -f /usr/local/bin/nish
rm -f /usr/local/bin/nish-db
if [ -f ~/.ssh/config.bak ]; then
    mv ~/.ssh/config.bak ~/.ssh/config
else
    rm ~/.ssh/config
fi
rm -rf ~/.ssh/socks
