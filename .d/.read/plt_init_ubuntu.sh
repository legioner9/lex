#!/bin/bash

#. "${HOME}/.bashrc"
fntmp_654fe0b9ed() {
    # local filename=${PLT_PATH}/.d/.read/plt_init.sh



    local ARGS=($@)
#     if [ "${ARGS[0]}" == "-h" ]; then
#         echo -e "${BLUE} 
# help from $filename :
# 1)
# ${NORMAL}" #sistem info mesage
#         return 0
#     fi
    NARGS=$#
    # local verbose=0
    # [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    # [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename $* ---${NORMAL}" #started functions
    # local idir=$(pwd)
    # local rdir="$(prs_f -d $filename)"
    # local gname="$(prs_f -n $filename)" # name without .ext
    #{header}

 
    RED='\033[0;31m'     # ${RED} # красный цвет знаков
    GREEN='\033[0;32m'   # ${GREEN} # зелёный цвет знаков
    BLUE='\033[0;34m'    # ${BLUE} # синий цвет знаков
    NORMAL='\033[0m' # ${NORMAL} # все атрибуты по умолчанию

    is_yes_654fe0b9ed() {
        local yes

        read -p "only y is yes. QUESTION: $1"
        read yes

        if [ "${yes:-0}" == "y" ]; then
            return 0
        else
            return 1
        fi
    }

    #----------------------------------------------------------------------
    #-------------------------------------
    #-------------------------------

    PPWW_654fe0b9ed="$(pwd)"
    dot_repo_1234234="${HOME}"/REPOBARE/_repo/lex/.d/.repo

    read -p "INFO dot dir repo \${dot_repo} = ${dot_repo_1234234}"

    echo -e "${GREEN}\$PPWW_654fe0b9ed = $PPWW_654fe0b9ed${NORMAL}" #print variable

    read -p "uncomment : WHEEL_USERS ALL=(ALL) ALL: Enter to continue or ^C to interrapt exec:0)if need sudo ^C  1)su - 2)EDITOR=mcedit visudo  3). _init_flash.sh"

    is_yes_654fe0b9ed "DO? : 1_upd_all_alt ::
    epm full-upgrade
    apt-get install ...
    y?" && {
        if [ -f "${PPWW_654fe0b9ed}/.sh/1_upd_all_ubuntu.sh" ]; then
            . "${PPWW_654fe0b9ed}/.sh/1_upd_all_ubuntu.sh"
        fi
    }

    is_yes_654fe0b9ed "DO interactive? : 2_reset_plt_fonsh
    rm -fvi $HOME/.fonsh_path
    rm -fvi $HOME/.plt_path
    rm -fvi $HOME/.repo_path
    rm -fvi $HOME/.enterrc
    DO? only 'y' remove all repo :: rm -rfv $HOME/REPOBARE
    DO? only 'y' remove .ssh :: rm -rfv $HOME/.ssh
    y?" && {
        if [ -f "${PPWW_654fe0b9ed}/.sh/2_reset_plt_fonsh.sh" ]; then
            . "${PPWW_654fe0b9ed}/.sh/2_reset_plt_fonsh.sh"
        fi
    }

    is_yes_654fe0b9ed "DO? : 3_git_init
    SSH_REMOVE_
    SSH_CREATE_
    y?" && {
        if [ -f "${PPWW_654fe0b9ed}"/.sh/3_git_init.sh ]; then
            . "${PPWW_654fe0b9ed}"/.sh/3_git_init.sh
        fi
    }

    read -p "Press enter to continue when prepear you Alt: add ssh to github.com or ^C for interrapt"

    is_yes_654fe0b9ed "DO? : 4_git_clone
    clone plt.git
    clone communis.git
    clone fonsh.git
    y?" && {
        if [ -f "${PPWW_654fe0b9ed}"/.sh/4_git_clone.sh ]; then
            . "${PPWW_654fe0b9ed}"/.sh/4_git_clone.sh
        fi
    }

    is_yes_654fe0b9ed "DO? : 5_first_copy_dotfiles" && {
        if [ -f "${PPWW_654fe0b9ed}"/.sh/5_first_copy_dotfiles.sh ]; then
            . "${PPWW_654fe0b9ed}"/.sh/5_first_copy_dotfiles.sh
        fi
    }

    is_yes_654fe0b9ed "DO? : 6_first_start_bash" && {
        if [ -f "${PPWW_654fe0b9ed}"/.sh/6_first_start_bash.sh ]; then
            . "${PPWW_654fe0b9ed}"/.sh/6_first_start_bash.sh
        fi
    }

    is_yes_654fe0b9ed "DO? : 7_post_first_" && {
        if [ -f "${PPWW_654fe0b9ed}"/.sh/7_post_first_.sh ]; then
            . "${PPWW_654fe0b9ed}"/.sh/7_post_first_.sh
        fi
    }

    #{body}
    #-------------------------------
    #-------------------------------------
    #----------------------------------------------------------------------

    cd "$idir"

    unset filename
}

fntmp_654fe0b9ed "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8"

unset fntmp_654fe0b9ed
