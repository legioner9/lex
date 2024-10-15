#!/bin/bash

echo -e "${GREEN} start 5_first_copy_dotfiles.sh ${NORMAL}" #print variable

#! dot_repo_1234234 from plt_init_.sh = .repo

if ! [[ -d ${HOME}/.d/.rc.d ]]; then
    mkdir -p ${HOME}/.d/.rc.d
fi

if ! [[ -d ${HOME}/.d/.path.d ]]; then
    mkdir -p ${HOME}/.d/.path.d
fi

#* UNZIP .st.rc.d

if [[ -f ${HOME}/REPOBARE/_repo/st_rc_d/.d/.zip/.st.rc.d.zip ]]; then

    rm ${HOME}/.st.rc.d.zip
    rm -r ${HOME}/.st.rc.d
    cp ${HOME}/REPOBARE/_repo/st_rc_d/.d/.zip/.st.rc.d.zip ${HOME}
    cd ${HOME}
    unzip ${HOME}/.st.rc.d.zip

else
    read -p "NOT_FILE: ${HOME}/REPOBARE/_repo/st_rc_d/.d/.zip/.st.rc.d.zip mast ^C!!!"
fi

#* UNZIP .st_rc_d.rc

if [[ -f ${HOME}/REPOBARE/_repo/st_rc_d/.d/.zip/.st_rc_d.rc.zip ]]; then

    rm ${HOME}/.st_rc_d.rc.zip
    rm ${HOME}/.st_rc_d.rc
    cp ${HOME}/REPOBARE/_repo/st_rc_d/.d/.zip/.st_rc_d.rc.zip ${HOME}
    cd ${HOME}
    unzip ${HOME}/.st_rc_d.rc.zip

else
    read -p "NOT_FILE: ${HOME}/REPOBARE/_repo/st_rc_d/.d/.zip/.st_rc_d.rc.zip mast ^C!!!"
fi

#****** CHECK ${HOME}/.w

touch ${HOME}/.sta.path

echo "exec : cat file://${HOME}/.sta.path"
cat ${HOME}/.sta.path
read -p "CHECK this path to repo ?( while examp : \${HOME}/REPOBARE/_repo/sta )"

#****** CHECK ${HOME}/.w

touch ${HOME}/.w

echo "exec : cat file://${HOME}/.w"
cat ${HOME}/.w
read -p "CHECK this w+ or w- ?( WRITE with !!! )"

#****** CHECK ${HOME}/.st_rc_d.path

touch ${HOME}/.st_rc_d.path

echo "exec : cat file://${HOME}/.st_rc_d.path"
cat ${HOME}/.st_rc_d.path
read -p "CHECK this path to repo ?( while examp : \${HOME}/REPOBARE/_repo/st_rc_d)"

#****** CHECK ${HOME}/.mane.path

touch ${HOME}/.mane.path

echo "exec : cat file://${HOME}/.mane.path"
cat ${HOME}/.mane.path
read -p "CHECK this path to repo ?( while examp : \${HOME}/REPOBARE/_repo/mane)"

#******

path_tar_dir="${dot_repo_1234234}/bcp_sys_"
arr_tar_file=(enterrc manerc st_rc_drc repo_path plt_path fonsh_path pd_path pd_read)
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

if ! grep -F 'if [[ -f ~/.st.rc.d/.st.rc ]]; then' <~/.bashrc; then
    echo 'if [[ -f ~/.st.rc.d/.st.rc ]]; then if ! . ~/.st.rc.d/.st.rc ; then echo "in ~/.bashrc : FAIL . ~/.st.rc.d/.st.rc : return 1" >&2;return 1;fi fi' >>~/.bashrc
fi

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
