#!/bin/bash

dir_php_docs_html=${REPO_PATH}/NPhp/.d/.ref.ax/www.php.net/manual/ru
arb_php_docs=${REPO_PATH}/NPhp/.d/.arb/php_doc.arb

echo -e "${HLIGHT}--- d2e_ 0 -dd ${arb_php_docs} ram ---${NORMAL}" #start files
for item in $(d2e_ 0 -dd ${arb_php_docs} ram); do
    echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
    rm -r "$item"
done
plt_pause "DO? :: arb2mm_ 1 4 2 ${dir_php_docs_html} ${arb_php_docs}"
arb2mm_ 1 4 2 "${dir_php_docs_html}" "${arb_php_docs}"

ls "${arb_php_docs}"
