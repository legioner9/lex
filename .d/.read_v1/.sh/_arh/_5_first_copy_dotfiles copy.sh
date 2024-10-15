# TMP_DIR_ST_RC
touch ${HOME}/.tmp_dir_st_rc
#!----------------------------------------------------------
yes=
read -p "write to ${HOME}/.tmp_dir_st_rc default \${HOME}/tmp_dir_st_rc ? ENTER only 'y' to DO " yes
[[ "y" == "${yes}" ]] && {
    echo "write \${HOME}/tmpx >${HOME}/.tmp_dir_st_rc"
    echo "\${HOME}/tmp_dir_st_rc" >"${HOME}"/.tmp_dir_st_rc
}

echo "exec : cat file://${HOME}/.tmp_dir_st_rc"
cat ${HOME}/.tmp_dir_st_rc

read -p "CHECK contane ${HOME}/.tmp_dir_st_rc with define \$TMP_DIR_ST_RC ?( WRITE with !!! )"

echo "exec : cat file://${HOME}/.tmp_dir_st_rc"
cat ${HOME}/.tmp_dir_st_rc

#!----------------------------------------------------------
yes=
read -p "mkdir $(cat ${HOME}/.tmp_dir_st_rc) ? ENTER only 'y' to DO " yes

[[ "y" == "${yes}" ]] && {
    eval "default_dir=$(cat ${HOME}/.tmp_dir_st_rc)"
    echo -e "${HLIGHT}--- mkdir ${default_dir} ---${NORMAL}" #start files
    mkdir ${default_dir}
}