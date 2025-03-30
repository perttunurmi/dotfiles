if [ -d $HOME/.prompt.d ]; then
    $HOME/.prompt.d/env.sh
fi

stty stop undef         # Disable ctrl-s to freeze terminal.

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY
unsetopt beep
bindkey -e
export KEYTIMEOUT=1 #10ms
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# End of lines added by compinstall

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' select-prompt '%SScrolling active: %s%s'
zmodload zsh/complist
compinit
_comp_options+=(globdots)

autoload -U colors && colors
autoload -U select-word-style
select-word-style bash

bindkey -s '^f' '^ucd "$(dirname "$(fzf)")"\n'
bindkey '^[[P' delete-char

source $HOME/.prompt.d/zsh.sh
