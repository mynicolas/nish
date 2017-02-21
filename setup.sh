#!/bin/bash
echo -e ">>>>>>>>>>> install progress started >>>>>>>>>>>>>>"
echo -e "=========== installing requirements  =============="
pip install -r requirements.txt
echo -e "=========== copy main exec files =================="
echo -e "=========== cp nish to /usr/local/bin/ ============"
cp ./nish /usr/local/bin/
echo -e "=========== cp nish-db to /usr/local/bin/ ========="
cp ./nish-db /usr/local/bin/
echo -e "===== backup ~/.ssh/config ~/.ssh/config.bak ======"
mv ~/.ssh/config ~/.ssh/config.bak
echo -e "=========== cp ssh config to ~/.ssh/ =============="
cp ./config ~/.ssh/
if [ ! -d ~/.ssh/socks ]; then
echo -e "=========== mkdir ~/.ssh/socks/ ==================="
    mkdir ~/.ssh/socks
fi
if [ ! -d ~/ssh-server ]; then
echo -e "=========== mkdir ~/ssh-server/ ==================="
    mkdir ~/ssh-server
fi
echo -e "<<<<<<<<<<< install progress ended <<<<<<<<<<<<<<<<"
echo -e "<<<<<<<<<<<<< install successful  <<<<<<<<<<<<<<<<<"
