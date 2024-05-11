### Essentials
```
sudo apt install curl wget build-essential zsh cmake gcc g++ git gh zoxide fzf btop vim compton nitrogen
```

### Dotfiles
```
git clone https://github.com/PERTZ42/.dotfiles
```

### TMUX
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source "~/.tmux.conf"
```

### ZSH
```
sudo apt install zsh
sudo apt install zsh-syntax-highlighting
```

### Rust cargo
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### Wez
```
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
```

```
sudo apt update
sudo apt install wezterm
```

###EZA
```
cargo install eza
```
