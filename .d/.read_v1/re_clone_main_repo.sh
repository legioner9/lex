#!/bin/bash

#. "${HOME}/.bashrc"
fntmp_45gbyher454() {

    RED='\033[0;31m'   # ${RED} # красный цвет знаков
    GREEN='\033[0;32m' # ${GREEN} # зелёный цвет знаков
    BLUE='\033[0;34m'  # ${BLUE} # синий цвет знаков
    NORMAL='\033[0m'   # ${NORMAL} # все атрибуты по умолчанию

    is_yes_45gbyher454() {
        local yes

        read -p "only y is yes. QUESTION: $1"
        read yes

        if [ "${yes:-0}" == "y" ]; then
            return 0
        else
            return 1
        fi
    }

    PPWW_45gbyher454="$(pwd)"

    repo_name_arr_45gbyher454=(plt
        communis
        fonsh
        lex
    )

    read -p "INFO pwd=${PPWW_45gbyher454} ; continue"

    is_yes_45gbyher454 "DO? : REMOVE ${repo_name_arr_45gbyher454[*]} in $HOME/REPOBARE/_repo: " && {
        for item_45gbyher454 in ${repo_name_arr_45gbyher454[@]}; do
            rm -rfv "${HOME}"/REPOBARE/_repo/"${item_45gbyher454}"
        done
    }

    is_yes_45gbyher454 "DO? : CLONE ${repo_name_arr_45gbyher454[*]} to $HOME/REPOBARE/_repo: " && {
        if [ -f "${PPWW_45gbyher454}/.sh/4_git_clone.sh" ]; then
            . "${PPWW_45gbyher454}/.sh/4_git_clone.sh"
        fi
    }

}

fntmp_45gbyher454
