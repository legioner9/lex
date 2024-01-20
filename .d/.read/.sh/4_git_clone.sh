#!/bin/bash

echo -e "${GREEN} start 4_git_clone.sh ${NORMAL}" #print variable

mkdir -pv "$HOME"/REPOBARE/_repo

#! git@gitflic.ru:legioner9
#! git@github.com:legioner9

cd "$HOME"/REPOBARE/_repo || {
    read -p "$HOME/REPOBARE/_repo not EXIST: return 1"
    return 1
}

git clone git@gitflic.ru:legioner9/plt.git || {
    read -p "fail: git clone git@gitflic.ru:legioner9/plt.git, return 1"
    return 1
}

git clone git@gitflic.ru:legioner9/communis.git || {
    read -p "fail: git clone git@gitflic.ru:legioner9/communis.git, return 1"
    return 1
}

git clone git@gitflic.ru:legioner9/fonsh.git || {
    read -p "fail: git clone git@gitflic.ru:legioner9/fonsh.git, return 1"
    return 1
}

git clone git@gitflic.ru:legioner9/lex.git || {
    read -p "fail: git clone git@gitflic.ru:legioner9/fonsh.git, return 1"
    return 1
}

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
