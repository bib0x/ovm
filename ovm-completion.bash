#!/usr/bin/env bash

function __ovm_completions() {

    local cur
    local dirs
    local opts
    local search

    COMPREPLY=()
    cur=${COMP_WORDS[COMP_CWORD]}

    case $COMP_CWORD in
        1)
            opts="env info load ls"
            COMPREPLY=( $( compgen -W "${opts}" -- "$cur" ) )
            ;;
        2)
            search=($(echo "$OVM_MODULES_PATH"  | tr ':' ' '))
            dirs=$(find "${search[@]}" -mindepth 1 -maxdepth 1 -type d -name "$cur*" -printf "%f " -path .git -prune)
            COMPREPLY=( $( compgen -W "${dirs}" -- "$cur" ) )
            ;;
    esac
}

complete -F __ovm_completions ovm
