default:
    stow -t $HOME ideavimrc
    stow -t $HOME/.config i3 ghostty tmux

update:
    git submodule update --remote
