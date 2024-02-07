#!/bin/bash

echo -e "${BLUE}--- that file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/daer.sh ---${NORMAL}" #sistem info mesage
echo -e "${HLIGHT}--- zip ${REPO_PATH}/lex/.d/.gelu/.daer ${REPO_PATH}/lex/.d/.read ---${NORMAL}" #start files

if ! zip  ${REPO_PATH}/lex/.d/.gelu/.daer ${REPO_PATH}/lex/.d/.read ; then
    plt_info "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/daer.sh : FAIL_EXEC : zip ${REPO_PATH}/lex/.d/.gelu/.daer ${REPO_PATH}/lex/.d/.read : return 1"
    return 1
fi

return 0