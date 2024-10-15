#!/bin/bash

#. "${HOME}/.bashrc"
fntmp_1b628031a3() {
    local filename=${PLT_PATH}/.d/.read/_deb/add_pltrc.sh

    local ARGS=($@)
    if [ "${ARGS[0]}" == "-h" ]; then
        echo -e "${BLUE} 
help from $filename :
1)
${NORMAL}" #sistem info mesage
        return 0
    fi
    NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename $* ---${NORMAL}" #started functions
    local idir=$(pwd)
    local rdir="$(prs_f -d $filename)"
    local gname="$(prs_f -n $filename)" # name without .ext
    #{header}

    #----------------------------------------------------------------------
    #-------------------------------------
    #-------------------------------
    touch ~/.bashrc

	if ! cat ~/.bashrc | grep -F 'if [ -f ~/.pltrc ]; then . ~/.pltrc; fi'; then
		echo 'if [ -f ~/.pltrc ]; then . ~/.pltrc; fi' >>~/.bashrc
	fi

	if ! cat ~/.bashrc | grep -F 'if [ -f ~/.fonshrc ]; then . ~/.fonshrc; fi'; then
		echo 'if [ -f ~/.fonshrc ]; then . ~/.fonshrc; fi' >>~/.bashrc
	fi
    #{body}
    #-------------------------------
    #-------------------------------------
    #----------------------------------------------------------------------

    cd "$idir"

    unset filename
}

fntmp_1b628031a3 "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8"

unset fntmp_1b628031a3
