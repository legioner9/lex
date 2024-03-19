#!/bin/bash

echo -e "${GREEN} start 5_first_copy_dotfiles.sh ${NORMAL}" #print variable

#! dot_repo_1234234 from plt_init_.sh = .repo

path_tar_dir="${dot_repo_1234234}/bcp_sys_"
arr_tar_file=(enterrc repo_path plt_path fonsh_path pd_path pd_read)

for item in ${arr_tar_file[@]}; do
    echo -e "${HLIGHT}--- tar -xzvf ${path_tar_dir}/${item}.tar.gz -C $HOME ---${NORMAL}"
    tar -xzvf "${path_tar_dir}"/${item}.tar.gz -C "$HOME"
done

touch ~/.bashrc

touch ~/.starc
: >~/.stabit

if ! grep -F 'if [ -f ~/.enterrc ]; then . ~/.enterrc; fi' <~/.bashrc; then
    echo 'if [ -f ~/.enterrc ]; then . ~/.enterrc; fi' >>~/.bashrc
fi

if [ -f ${HOME}/.vscode-oss ]; then
    rm ${HOME}/.vscode-oss
fi

if ! grep -F 'touch ~/.stabit' <~/.bashrc; then
    echo 'touch ~/.stabit' >>~/.bashrc
fi

if ! grep -F '_sta0(){ : >~/.stabit;}' <~/.bashrc; then
    echo '_sta0(){ : >~/.stabit;}' >>~/.bashrc
fi

if ! grep -F '_sta1(){ echo A >~/.stabit;}' <~/.bashrc; then
    echo '_sta1(){ echo A >~/.stabit;}' >>~/.bashrc
fi

if ! grep -F '_stae(){ cat ~/.stabit;}' <~/.bashrc; then
    echo '_stae(){ cat ~/.stabit;}' >>~/.bashrc
fi
