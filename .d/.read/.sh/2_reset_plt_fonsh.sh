#!/bin/bash

echo -e "${GREEN} start 2_reset_plt_fonsh.sh ${NORMAL}" #print variable

RESET_PLT_FONSH_TO_DEFAULT_=""
read -p "START interactive RESET_PLT_FONSH_TO_DEFAULT_ block? =================== y/n"
read RESET_PLT_FONSH_TO_DEFAULT_

if [[ "${RESET_PLT_FONSH_TO_DEFAULT_}" == "y" ]]; then

    rm -fvi "$HOME"/.fonsh_path
    rm -fvi "$HOME"/.plt_path
    rm -fvi "$HOME"/.repo_path
    rm -fvi "$HOME"/.enterrc

    read -p "DO? only 'y' remove all repo :: rm -rfv $HOME/REPOBARE"
    read yes
    if [[ "${yes:-0}" == "y" ]]; then
        rm -rfv "$HOME"/REPOBARE
    fi

    read -p "DO? only 'y' remove .ssh :: rm -rfv $HOME/.ssh"
    read yes
    if [[ "${yes:-0}" == "y" ]]; then
         rm -rfvi "$HOME"/.ssh
    fi

fi
