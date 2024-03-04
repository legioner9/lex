#!/bin/bash

dir_php_docs_html=${REPO_PATH}/lex/.d/.arb/proc.arb/fs_tsf_101_php_doc_1.ram/.grot/dir_php_docs_html
arb_php_docs=${REPO_PATH}/lex/.d/.arb/proc.arb/fs_tsf_101_php_doc_1.ram/.grot/arb_php_docs

echo -e "${HLIGHT}--- d2e_ 0 -dd ${arb_php_docs} ram ---${NORMAL}" #start files
for item in $(d2e_ 0 -dd ${arb_php_docs} ram); do
    echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
    rm -r "$item"
done

arb2mm_ 1 4 2 "${dir_php_docs_html}" "${arb_php_docs}"

ls "${arb_php_docs}"
