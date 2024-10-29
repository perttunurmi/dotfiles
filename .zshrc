# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep
bindkey -e
export KEYTIMEOUT=1 #10ms
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pertz/.zshrc'

# autoload -Uz compinit
# compinit
# End of lines added by compinstall

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

autoload -U colors && colors

autoload -U select-word-style
select-word-style bash

# Zoxide
# =============================================================================

function z() {
    __zoxide_z "$@"
}

function zi() {
    __zoxide_zi "$@"
}

# Completions.
if [[ -o zle ]]; then
    __zoxide_result=''

    function __zoxide_z_complete() {
        # Only show completions when the cursor is at the end of the line.
        # shellcheck disable=SC2154
        [[ "${#words[@]}" -eq "${CURRENT}" ]] || return 0

        if [[ "${#words[@]}" -eq 2 ]]; then
            # Show completions for local directories.
            _files -/
        elif [[ "${words[-1]}" == '' ]]; then
            # Show completions for Space-Tab.
            # shellcheck disable=SC2086
            __zoxide_result="$(\command zoxide query --exclude "$(__zoxide_pwd || \builtin true)" --interactive -- ${words[2,-1]})" || __zoxide_result=''

            # Bind '\e[0n' to helper function.
            \builtin bindkey '\e[0n' '__zoxide_z_complete_helper'
            # Send '\e[0n' to console input.
            \builtin printf '\e[5n'
        fi

        # Report that the completion was successful, so that we don't fall back
        # to another completion function.
        return 0
    }

    function __zoxide_z_complete_helper() {
        if [[ -n "${__zoxide_result}" ]]; then
            # shellcheck disable=SC2034,SC2296
            BUFFER="z ${(q-)__zoxide_result}"
            \builtin zle reset-prompt
            \builtin zle accept-line
        else
            \builtin zle reset-prompt
        fi
    }
    \builtin zle -N __zoxide_z_complete_helper

    [[ "${+functions[compdef]}" -ne 0 ]] && \compdef __zoxide_z_complete z
fi

# =============================================================================

stty stop undef         # Disable ctrl-s to freeze terminal.

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
setopt PROMPT_SUBST ; PS1='[%F{green}%n@%m%f:%F{blue}%~%F{red}$(__git_ps1 "(%s)")%f]\$ '


#============================================================================#

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp -uq)"
    trap 'rm -f $tmp >/dev/null 2>&1 && trap - HUP INT QUIT TERM PWR EXIT' HUP INT QUIT TERM PWR EXIT
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

bindkey -s '^o' 'yazi\n'
bindkey -s '^f' '^ucd "$(dirname "$(fzf)")"\n'
bindkey '^[[P' delete-char


#============================================================================#

alias grep='grep --color=always'
alias ls='eza --color=always --group-directories-first --git --git-repos'
alias ll='eza -l --color=always --group-directories-first --git --git-repos'
alias lla='eza -alF --color=always --group-directories-first --git --git-repos'
alias la='eza -A --color=always --group-directories-first --git --git-repos'
alias cd='z'

alias cal='cal -m'
alias vi=vim

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

export work=$HOME/workspaces/
export PATH="$HOME/.emacs.d/bin:$PATH"

export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh

# export XDG_CURRENT_DESKTOP=GNOME
export BROWSER=firefox
export EDITOR=vim
# export WINDOW_MANAGER=sway

alias cpui='watch -n1 "grep \"^[c]pu MHz\" /proc/cpuinfo"'


source <(fzf --zsh) # Set up fzf key bindings and fuzzy completion
eval "$(zoxide init zsh)"

source ~/workspaces/dotfiles/less-termcap
source ~/workspaces/dotfiles/.git-prompt.sh
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
