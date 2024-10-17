#!/bin/bash

echo -e "${GREEN} start 5_first_copy_dotfiles.sh ${NORMAL}" #print variable

#! dot_repo_1234234 from plt_init_.sh = .repo

# if ! [[ -d ${HOME}/.d/.rc.d ]]; then
#     mkdir -p ${HOME}/.d/.rc.d
# fi

# if ! [[ -d ${HOME}/.d/.path.d ]]; then
#     mkdir -p ${HOME}/.d/.path.d
# fi
#* gig ${HOME}/.stl/.path

mkdir -p ${HOME}/.stl/.path

arr_name_repo=($(cat ${PPWW_654fe0b9ed}/.sh/0_arr_path_to_libs.lst))

echo -e "${GREEN}\${arr_name_repo[@]} = ${arr_name_repo[*]}${NORMAL}" #print variable

echo "\${HOME}/REPOBARE/_repo/st_rc_d" >${HOME}/.stl/.path/st_rc_d.path
echo "\${HOME}/REPOBARE/_repo/sta" >${HOME}/.stl/.path/st_rc_d_data.path
echo "\${HOME}/REPOBARE/_repo/mane" >${HOME}/.stl/.path/mane.path
echo "\${HOME}/REPOBARE/_repo/stb" >${HOME}/.stl/.path/mane_data.path

# #* UNZIP .st.rc.d

# if [[ -f ${HOME}/REPOBARE/_repo/st_rc_d/.d/.zip/.st.rc.d.zip ]]; then

#     rm ${HOME}/.st.rc.d.zip
#     rm -r ${HOME}/.st.rc.d
#     cp ${HOME}/REPOBARE/_repo/st_rc_d/.d/.zip/.st.rc.d.zip ${HOME}
#     cd ${HOME}
#     unzip ${HOME}/.st.rc.d.zip

# else
#     read -p "NOT_FILE: ${HOME}/REPOBARE/_repo/st_rc_d/.d/.zip/.st.rc.d.zip mast ^C!!!"
# fi

# #* UNZIP .st_rc_d.rc

# if [[ -f ${HOME}/REPOBARE/_repo/st_rc_d/.d/.zip/.st_rc_d.rc.zip ]]; then

#     rm ${HOME}/.st_rc_d.rc.zip
#     rm ${HOME}/.st_rc_d.rc
#     cp ${HOME}/REPOBARE/_repo/st_rc_d/.d/.zip/.st_rc_d.rc.zip ${HOME}
#     cd ${HOME}
#     unzip ${HOME}/.st_rc_d.rc.zip

# else
#     read -p "NOT_FILE: ${HOME}/REPOBARE/_repo/st_rc_d/.d/.zip/.st_rc_d.rc.zip mast ^C!!!"
# fi

# #****** CHECK ${HOME}/.w

# touch ${HOME}/.sta.path

# echo "exec : cat file://${HOME}/.sta.path"
# cat ${HOME}/.sta.path
# read -p "CHECK this path to repo ?( while examp : \${HOME}/REPOBARE/_repo/sta )"

if [[ -d ${HOME}/.d ]]; then
    mv ${HOME}/.d ${HOME}/.d~
fi

rm ${HOME}/.d.zip

cp ${HOME}/REPOBARE/_repo/st_rc_d/.d/.zip/.d.zip ${HOME}

cd ${HOME}

unzip .d.zip

#****** CHECK ${HOME}/.w
touch ${HOME}/.w

read -p "CHECK ${HOME}/.w define this: w+ or w- ?( WRITE with !!! )"
echo "exec : cat file://${HOME}/.w"
cat ${HOME}/.w

#****** CHECK ${HOME}/.tmp_path
# TMP_DIR_ST_RC
touch ${HOME}/.tmp_dir_st_rc
#!----------------------------------------------------------
yes=
read -p "write to ${HOME}/.tmp_dir_st_rc default \${HOME}/tmp_dir_st_rc ? ENTER only 'y' to DO " yes
[[ "y" == "${yes}" ]] && {
    echo "write \${HOME}/tmp_dir_st_rc >${HOME}/.tmp_dir_st_rc"
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

# #****** CHECK ${HOME}/.st_rc_d.path

# touch ${HOME}/.st_rc_d.path

# echo "exec : cat file://${HOME}/.st_rc_d.path"
# cat ${HOME}/.st_rc_d.path
# read -p "CHECK this path to repo ?( while examp : \${HOME}/REPOBARE/_repo/st_rc_d)"

# #****** CHECK ${HOME}/.mane.path

# touch ${HOME}/.mane.path

# echo "exec : cat file://${HOME}/.mane.path"
# cat ${HOME}/.mane.path
# read -p "CHECK this path to repo ?( while examp : \${HOME}/REPOBARE/_repo/mane)"

# #******

path_tar_dir="${dot_repo_1234234}/bcp_sys_"
arr_tar_file=(enterrc bashrc bash_profile gitconfig repo_path plt_path fonsh_path pd_path pd_read)
# arr_tar_file=(enterrc manerc st_rc_drc repo_path plt_path fonsh_path pd_path pd_read)
# arr_tar_file=(enterrc manerc st.rc.d repo_path plt_path fonsh_path pd_path pd_read)

for item in ${arr_tar_file[@]}; do
    echo -e "${HLIGHT}--- tar -xzvf ${path_tar_dir}/${item}.tar.gz -C $HOME ---${NORMAL}"
    tar -xzvf "${path_tar_dir}"/${item}.tar.gz -C "$HOME"
done

touch ~/.bashrc

# touch ~/.starc
# : >~/.stabit

# if ! grep -F 'if [ -f ~/.enterrc ]; then . ~/.enterrc; fi' <~/.bashrc; then
#     echo 'if [ -f ~/.enterrc ]; then . ~/.enterrc; fi' >>~/.bashrc
# fi

#!! if ! grep -F 'if [[ -f ~/.d/.rc.d/.st.rc.d/.st.rc ]]; then' <~/.bashrc; then
#!!     echo 'if [[ -f ~/.d/.rc.d/.st.rc.d/.st.rc ]]; then if ! . ~/.d/.rc.d/.st.rc.d/.st.rc ; then echo "in ~/.bashrc : FAIL . ~/.d/.rc.d/.st.rc.d/.st.rc : return 1" >&2;return 1;fi fi' >>~/.bashrc
#!! fi

#! if ! grep -F 'if [[ -f ~/.st.rc.d/.st.rc ]]; then . ~/.st.rc.d/.st.rc >/dev/null; fi' <~/.bashrc; then echo 'if [[ -f ~/.st.rc.d/.st.rc ]]; then . ~/.st.rc.d/.st.rc >/dev/null; fi' >>~/.bashrc; fi

#! ~/.st.rc.d/.st.rc

# touch ~/.mane.path
# touch ~/.st_rc_d.path

if [ -f ${HOME}/.vscode-oss ]; then
    rm ${HOME}/.vscode-oss
fi

# if ! grep -F 'touch ~/.stabit' <~/.bashrc; then
#     echo 'touch ~/.stabit' >>~/.bashrc
# fi

# if ! grep -F '_sta0(){ : >~/.stabit;}' <~/.bashrc; then
#     echo '_sta0(){ : >~/.stabit;}' >>~/.bashrc
# fi

# if ! grep -F '_sta1(){ echo A >~/.stabit;}' <~/.bashrc; then
#     echo '_sta1(){ echo A >~/.stabit;}' >>~/.bashrc
# fi

# if ! grep -F '_stae(){ cat ~/.stabit;}' <~/.bashrc; then
#     echo '_stae(){ cat ~/.stabit;}' >>~/.bashrc
# fi
