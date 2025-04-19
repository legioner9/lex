#!/bin/bash

RED='\033[0;31m'   # ${RED} # красный цвет знаков
GREEN='\033[0;32m' # ${GREEN} # зелёный цвет знаков
BLUE='\033[0;34m'  # ${BLUE} # синий цвет знаков
NORMAL='\033[0m'   # ${NORMAL} # все атрибуты по умолчанию

_init_lib_() {
    _is_yes_() {
        local yes

        read -p "only y is yes. QUESTION: $1"
        read yes

        if [ "${yes:-0}" == "y" ]; then
            return 0
        else
            return 1
        fi
    }
}
_init_lib_