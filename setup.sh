#!/bin/bash
echo "=========== install progress started =============="
echo "=========== installing requirements  =============="
pip install -r requirements.txt
echo "=========== copy main exec files =================="
echo "=========== cp nish to /usr/local/bin/ ============"
cp ./nish /usr/local/bin/
echo "=========== cp nish-db to /usr/local/bin/ ========="
cp ./nish-db /usr/local/bin/
echo "=========== cp ssh config to ~/.ssh/ =============="
cp ./config ~/.ssh/
if [ ! -d ~/.ssh/socks ]; then
echo "=========== mkdir ~/.ssh/socks/ ==================="
    mkdir ~/.ssh/socks
fi
if [ ! -d ~/ssh-server ]; then
echo "=========== mkdir ~/ssh-server/ ==================="
    mkdir ~/ssh-server
fi
echo "=========== install progress ended ================"
