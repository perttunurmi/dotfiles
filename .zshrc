# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5001
SAVEHIST=5001
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pertz/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)


# User configuration

####################################################################################################################################################

_z_cd() {
    cd "$@" || return "$?"

    if [ "$_ZO_ECHO" = "1" ]; then
        echo "$PWD"
    fi
}

z() {
    if [ "$#" -eq 0 ]; then
        _z_cd ~
    elif [ "$#" -eq 1 ] && [ "$1" = '-' ]; then
        if [ -n "$OLDPWD" ]; then
            _z_cd "$OLDPWD"
        else
            echo 'zoxide: $OLDPWD is not set'
            return 1
        fi
    else
        _zoxide_result="$(zoxide query -- "$@")" && _z_cd "$_zoxide_result"
    fi
}

zi() {
    _zoxide_result="$(zoxide query -i -- "$@")" && _z_cd "$_zoxide_result"
}


alias za='zoxide add'

alias zq='zoxide query'
alias zqi='zoxide query -i'

alias zr='zoxide remove'
zri() {
    _zoxide_result="$(zoxide query -i -- "$@")" && zoxide remove "$_zoxide_result"
}


_zoxide_hook() {
    zoxide add "$(pwd -L)"
}

chpwd_functions=(${chpwd_functions[@]} "_zoxide_hook")

###############################################################################################################


stty stop undef         # Disable ctrl-s to freeze terminal.

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

 # Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"


## enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
# alias ll='ls -l'
# alias lla='ls -alF'
# alias la='ls -A'
# alias l='ls -CF'
alias ls='eza --color always --group-directories-first --git --git-repos'
alias ll='eza -l --icons --color always --group-directories-first --git --git-repos'
alias lla='eza -alF --icons --color always --group-directories-first --git --git-repos'
alias la='ls -A --color always --group-directories-first --git --git-repos'

alias bat='batcat'

export EDITOR='vim'
export VISUAL='vim'
#set -o vi
export KEYTIMEOUT=1


# Define the userpart section of the prompt
local userpart='%F{green}%n@%m%f:'

# autoload -Uz vcs_info
# precmd_vcs_info() { vcs_info }
# precmd_functions+=( precmd_vcs_info )
# setopt prompt_subst
# RPROMPT='${vcs_info_msg_0_}'
# PROMPT='${vcs_info_msg_0_}%# '
# zstyle ':vcs_info:git:*' formats '%b'

# Combine all the parts to form the PS1 prompt
PROMPT='${userpart}%F{blue}%~%F{red}${vcs_info_msg_0_}%f$ '
#setopt PROMPT_SUBST ; PS1='[%F{green}%n@%m %F{blue}%c%F{red}$(__git_ps1 " (%s)")%f]\$ '
#ZSH:  precmd () { __git_ps1 "%n" ":%~$ " "|%s" }
#PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
setopt PROMPT_SUBST ; PS1='[%F{green}%n@%m%f:%F{blue}%~%F{red}$(__git_ps1 "(%s)")%f]\$ '

alias weather='curl "wttr.in/Jyväskylä"'
alias battery='cat /sys/class/power_supply/BAT0/capacity'
alias monitor='xrandr --output DisplayPort-1 --mode 1920x1080 --rate 240'

export PATH="$PATH:/opt/nvim/"
source ~/.git-prompt.sh
# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
