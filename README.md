# My personal dotfiles

Should propably move over to using stow, but I am too lazy right now and besides at the moment this repo is mainly for my T480s.

### Clone this repo
```
git clone https://github.com/PERTZ42/.dotfiles
```

### tpm is needed for tmux config
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### zsh is gonna cry without these
```
sudo pacman -S zsh zsh-syntax-highlighting zsh-autosuggestions fzf eza zoxide
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### neovim is forked from kickstart
```
git clone https://github.com/perttunurmi/nvim
```

Feel free to post on issues if something should have been done differently.
