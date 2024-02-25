#!/bin/bash

echo -e "${GREEN} start 1_upd_all_alt.sh ${NORMAL}" #print variable

apt update
apt dist-upgrade -d
apt dist-upgrade
apt clean

# sudo apt-get install eepm

# sudo epm full-upgrade --auto -y
# sudo epm autoremove -y
# sudo epm autoremove --direct


# sudo epm ei -y

# sudo epm play yandex-browser -y
# sudo epm play yandex-disk -y
sudo apt install apt-repo apt rpm vim-X11 node python gcc++ wget make gitk git git-gui mate-default zip unzip -y
