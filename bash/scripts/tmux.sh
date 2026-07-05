#!/usr/bin/env bash

if [[ ! -x $(which fzf) ]]; then
    printf "fzf not installed\n"
    exit 200
fi

if [[ ! -x $(which tmux) ]]; then
    printf "tmux not installed\n"
    exit 201
fi

tmux_fzf_select_session() {
    ghost="Select a session to attach to or cancel by pressing ctrl-c"
    selected_session=$(tmux list-sessions | fzf --ghost="$ghost" | sed -E 's/: .*//')

    if [[ -n $selected_session ]]; then
        tmux attach-session -t "$selected_session"
    fi
}

alias tma=tmux_fzf_select_session
