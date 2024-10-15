#!/bin/bash

echo -e "${GREEN} start 1_upd_all_alt.sh ${NORMAL}" #print variable

sudo apt update
sudo apt dist-upgrade -d -y
sudo apt dist-upgrade -y
sudo apt clean

# sudo apt-get install eepm

# sudo epm full-upgrade --auto -y
# sudo epm autoremove -y
# sudo epm autoremove --direct


# sudo epm ei -y

# sudo epm play yandex-browser -y
# sudo epm play yandex-disk -y
sudo apt install apt-repo 
sudo apt install apt 
sudo apt install rpm 
sudo apt install vim-X11 
sudo apt install node 
sudo apt install python 
sudo apt install gcc++ 
sudo apt install wget 
sudo apt install make 
sudo apt install gitk 
sudo apt install git 
sudo apt install git-gui 
sudo apt install mate-default 
sudo apt install zip 
sudo apt install unzip
