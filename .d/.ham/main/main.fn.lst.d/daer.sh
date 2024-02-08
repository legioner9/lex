#!/bin/bash

echo -e "${BLUE}--- that file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/daer.sh ---${NORMAL}" #sistem info mesage
echo -e "${HLIGHT}--- zip ${REPO_PATH}/lex/.d/.gelu/.daer ${REPO_PATH}/lex/.d/.read ---${NORMAL}" #start files

cd ${REPO_PATH}/lex/.d/.gelu || plt_exit

if ! pzip_to_ 0 ${REPO_PATH}/lex/.d/.gelu/.daer.zip ${REPO_PATH}/lex/.d/.read 0 ; then
    plt_info "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/daer.sh : FAIL_EXEC : zip ${REPO_PATH}/lex/.d/.gelu/.daer ${REPO_PATH}/lex/.d/.read : return 1"
    return 1
fi

return 0