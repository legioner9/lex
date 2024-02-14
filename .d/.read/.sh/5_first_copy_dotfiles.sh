#!/bin/bash

echo -e "${GREEN} start 5_first_copy_dotfiles.sh ${NORMAL}" #print variable

path_tar_dir="${HOME}/REPOBARE/_repo/lex/.d/.repo/bcp_sys_"
arr_tar_file=(enterrc repo_path plt_path fonsh_path pd_path pd_read)

for item in ${arr_tar_file[@]};do
    echo -e "${HLIGHT}--- tar -xzvf ${path_tar_dir}/${item}.tar.gz -C $HOME ---${NORMAL}"
    tar -xzvf "${path_tar_dir}"/${item}.tar.gz -C "$HOME"
done

touch ~/.bashrc

if ! grep -F 'if [ -f ~/.enterrc ]; then . ~/.enterrc; fi' <~/.bashrc; then
    echo 'if [ -f ~/.enterrc ]; then . ~/.enterrc; fi' >>~/.bashrc
fi

if [ -f ${HOME}/.vscode-oss ]; then
    rm ${HOME}/.vscode-oss
fi
