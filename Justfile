default:
    @just list

list:
    @just --list

stow:
    stow -t $HOME ideavimrc
    stow -t $HOME/.config .

update:
    git submodule update --remote
