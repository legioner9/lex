#!/bin/bash

n=1

# while [ "$n" -le 120 ]; do
#     # e
# done

cd ${PD_PATH}/.d/.mul/nmw_opi_/mask/mask_num.d || {
    plt_info "NOT_DIR : '${PD_PATH}/.d/.mul/nmw_opi_/mask/mask_num.d' : return 1"
    return 1
}

if ! [ -f "$(pwd)"/$1 ]; then
    plt_info "NOT_FILE : '$(pwd)/$1' : return 1"
    return 1 
fi
plt_pause "DO? : fill '$(pwd)/$1'"
: >"$1"
for ((i = 1; i < 180; i++)); do
    echo $i >>"$1"
done
