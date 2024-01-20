#!/bin/bash

echo -e "${GREEN} start 5_first_copy_dotfiles.sh ${NORMAL}" #print variable

path_tar_dir="${HOME}/REPOBARE/_repo/plt/.d/.repo/bcp_sys_"
arr_tar_file=(repo_path plt_path fonsh_path)

echo -e "${HLIGHT}--- tar -xzvf ${path_tar_dir}/enterrc.tar.gz -C $HOME ---${NORMAL}"
tar -xzvf "${path_tar_dir}"/enterrc.tar.gz -C "$HOME"

touch ~/.bashrc

if ! grep -F 'if [ -f ~/.enterrc ]; then . ~/.enterrc; fi' <~/.bashrc; then
    echo 'if [ -f ~/.enterrc ]; then . ~/.enterrc; fi' >>~/.bashrc
fi

if [ -f ${HOME}/.vscode-oss ]; then
    rm ${HOME}/.vscode-oss
fi
