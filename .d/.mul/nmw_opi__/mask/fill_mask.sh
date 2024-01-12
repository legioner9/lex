#!/bin/bash

n=1

# while [ "$n" -le 120 ]; do
#     # e
# done

cd ${PD_PATH}/.d/.mul/nmw_opi__/mask

if [ -f "$(pwd)"/mask_num.lst ];then
plt_info "NOT_FILE : $(pwd)/mask_num.lst : ret "
fi

: >mask_num.lst
for ((i = 1; i < 180; i++)); do
    echo $i >>mask_num.lst
done
