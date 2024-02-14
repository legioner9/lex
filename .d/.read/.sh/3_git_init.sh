#!/bin/bash

echo -e "${GREEN} start 3_git_init.sh ${NORMAL}" #print variable

if [ -d "$HOME/.ssh" ]; then
    echo -e "${RED}--- 
-f $HOME/.ssh/id_rsa  exist  
---${NORMAL}" #exit 1

    echo "continue with rm -rfv "$HOME"/.ssh :: only y or any"
    read y1

    if [ ${y1:-0} == "y" ]; then
        rm -rfv "$HOME"/.ssh
    else
        echo -e "${RED}--- 
ssh exist 
not removed
return 1 from 3_git_init.sh
---${NORMAL}" #exit 1
        return 1
    fi

    else

    echo "continue with create keys from zip :: only y or any"

    read y2

    if [ ${y2:-0} == "y" ]; then
        cp -rfv ${PPWW_654fe0b9ed}/.zip/read.zip ${HOME}
        cp -rf ${HOME}/.ssh ${HOME}/.ssh~
        rm -rf ${HOME}/.ssh
        unzip ${HOME}/read.zip -d ${HOME}
        file ${HOME}/.ssh
        # continue
        #		else
        #			echo "continue with create keys from ssh generate (y/n)"
        #			y3=""
        #			read y3
        #			[ "${y3}" == "y" ] && ! [ $y2 == "y" ]; then
        # return 0 #! deb
        #		    ssh-keygen -t rsa -b 4096 -C "legioner9@inbox.ru"
    fi

    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
fi
