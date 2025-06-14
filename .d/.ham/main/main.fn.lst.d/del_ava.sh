#!/bin/bash

echo -e "${BLUE}--- that file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/del_ava.sh ---${NORMAL}" #sistem info mesage
echo -e "${HLIGHT}--- DEL AVA ---${NORMAL}"  



if [[ -f ${REPO_PATH}/${name_repo}/.d/.read/.zip/prl.man ]]; then
    plt_info "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/del_ava.sh : DEL THAT : ${REPO_PATH}/${name_repo}/.d/.read/.zip/prl.man : return 1"
    return 1
fi

if [[ -d ${REPO_PATH}/${name_repo}/.d/.depo/ifo ]]; then
    plt_info "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/del_ava.sh : DEL THAT : ${REPO_PATH}/${name_repo}/.d/.depo/ifo : return 1"
    return 1
fi

return 0
