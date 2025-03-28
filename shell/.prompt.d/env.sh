export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/bin/:$PATH

export EDITOR=nvim
export MANPAGER='nvim +Man!'

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
