#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

XXX() {

    echo -e "${CYAN}--- XXX() file://${arb_path}/_proc/infn/XXX.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                            #sistem info mesage

    # local first_arg=
    # first_arg=$1
    # if [ -z "${first_arg}" ]; then
    #     plt_info "001_infn() : $1 : args NOT_DEFINE : return 1"
    #     return 1
    # fi
    #! -------------- START check env -------------------
    if [ -z "${arb_path}" ]; then
        plt_info "in garb__infn() : NOT_DEFINE : '\${arb_path}' : return 1"
        return 1
    fi

    if [ -z "${ram_name}" ]; then
        plt_info "in garb__infn() : NOT_DEFINE : '\${ram_name}' : return 1"
        return 1
    fi

    #! -------------- END check env -------------------
    #{body}

    local path_sh
    path_sh="${arb_path}"/"${ram_name}".ram/.grot/"${ram_name}".sh

    if ! [[ -f "${path_sh}" ]]; then
        plt_exit "in ${FNN} : NOT_FILE : 'file://${path_sh}' : return 1"
        return 1
    fi

    if ! . "${path_sh}"; then
        plt_exit "in ${FNN} : EXEC_FAIL : '. file://${path_sh}' : return 1"
        return 1
    fi

    "${ram_name}"

}

XXX
