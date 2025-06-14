#!/bin/bash

echo -e "${BLUE}--- that file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/rm_dm.sh ---${NORMAL}" #sistem info mesage
echo -e "${HLIGHT}--- file_size_check_arg_mb_proc__ham__d() 45 ---${NORMAL}" #start files

if [[ -d ${REPO_PATH}/${name_repo}/.d/.dm/dm ]] ; then
    echo "in file://${REPO_PATH}/${name_repo}/.d/.ham/main/main.fn.lst.d/rm_dm.sh : DEL THAT : file://${REPO_PATH}/${name_repo}/.d/.dm/dm : return 1" >&2
    return 1
fi

return 0
