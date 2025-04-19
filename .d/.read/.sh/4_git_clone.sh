#!/bin/bash

echo -e "${GREEN} start 4_git_clone.sh ${NORMAL}" #print variable

#! EXAMP! https://gitflic.ru/project/legioner9/lex/file/downloadAll?branch=master
#! EXAMP! https://github.com/legioner9/mane/archive/refs/heads/master.zip

mkdir -pv "$HOME"/REPOBARE/_repo

#! git@gitflic.ru:legioner9
#! git@github.com:legioner9
#! /run/media/st/MY_ONE/REPOBARE/_bare
#! /run/media/st/TOSHIBA_EXT/REPOBARE/_bare
#! /run/media/st/TOSH/REPOBARE/_bare

read -p "INFO: elegendy bare ENTER"

bare_arr=(
    git@gitflic.ru:legioner9
    git@github.com:legioner9
    ssh://git@gitverse.ru:2222/legioner9
    /run/media/"${USER}"/MY_ONE/REPOBARE/_bare
    /run/media/"${USER}"/TOSHIBA_EXT/REPOBARE/_bare
    /run/media/"${USER}"/TOSH/REPOBARE/_bare
    https://gitflic.ru/project/legioner9
    https://github.com/legioner9
    https://gitverse.ru/sc/legioner9
)

repo_name_arr=(plt
    st_rc_d
    communis
    fonsh
    lex
    mane
    sta
    stb
    stl
)

cd "$HOME"/REPOBARE/_repo || {
    read -p "$HOME/REPOBARE/_repo not EXIST: return 1"
    return 1
}

select item_bare_arr in ${bare_arr[@]}; do
    bare_path=${item_bare_arr}
    echo "\${bare_path}=${bare_path}"
    break
done

read -p "INFO cloning into $(pwd) RIGHT? ENTER :: WRONG ^C"

for item_repo_name_arr in ${repo_name_arr[@]}; do

    echo "git clone ${bare_path}/${item_repo_name_arr}"

    git clone ${bare_path}/${item_repo_name_arr} || {
        read -p "IS_ERROR? fail: git clone ${bare_path}/${item_repo_name_arr}, continue"
        continue
    }

done

for item_repo_name_arr in ${repo_name_arr[@]}; do
    if [[ -f ${bare_path}/${item_repo_name_arr}/.d/.repo.d/.repo.dpl ]]; then
        . ${bare_path}/${item_repo_name_arr}/.d/.repo.d/.repo.dpl || {
            read -p "IS_ERROR? fail: . ${bare_path}/${item_repo_name_arr}/.repo.dpl, continue"
        }
    else
        read -p "IS_ERROR? NOT_FILE: ${bare_path}/${item_repo_name_arr}/.repo.dpl, continue"
    fi
done

# git clone git@gitflic.ru:legioner9/plt.git || {
#     read -p "fail: git clone git@gitflic.ru:legioner9/plt.git, return 1"
#     return 1
# }

# git clone git@gitflic.ru:legioner9/communis.git || {
#     read -p "fail: git clone git@gitflic.ru:legioner9/communis.git, return 1"
#     return 1
# }

# git clone git@gitflic.ru:legioner9/fonsh.git || {
#     read -p "fail: git clone git@gitflic.ru:legioner9/fonsh.git, return 1"
#     return 1
# }

# git clone git@gitflic.ru:legioner9/lex.git || {
#     read -p "fail: git clone git@gitflic.ru:legioner9/lex.git, return 1"
#     return 1
# }

# git clone git@github.com:legioner9/plt.git || {
#     read -p "fail: git clone git@github.com:legioner9/plt.git, return 1"
#     return 1
# }

# git clone git@github.com:legioner9/communis.git || {
#     read -p "fail: git clone git@github.com:legioner9/communis.git, return 1"
#     return 1
# }

# git clone git@github.com:legioner9/fonsh.git || {
#     read -p "fail: git clone git@github.com:legioner9/fonsh.git, return 1"
#     return 1
# }

# git clone git@github.com:legioner9/lex.git || {
#     read -p "fail: git clone git@github.com:legioner9/fonsh.git, return 1"
#     return 1
# }
