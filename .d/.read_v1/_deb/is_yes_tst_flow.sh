#!/bin/bash

is_yes_654fe0b9ed0() {
    local yes

    read -p "only y is yes. QUESTION: $1"
    read yes

    if [ ${yes:-0} == "y" ]; then
        return 0
    else
        return 1
    fi
}

is_yes_654fe0b9ed0 "DO? : 1_upd_all_alt ::
    epm full-upgrade
    apt-get install ...
    y?" &&
    if :; then
        echo "YES"
    fi
