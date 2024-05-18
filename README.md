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

### EZA
```
cargo install eza
```

### NVIM
```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
export PATH="$PATH:/opt/nvim-linux64/bin"
```

```
sudo apt install git curl wget unzip tar gzip cargo npm cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
git clone --recurse-submodules "https://github.com/PERTZ42/nvim"
```

```
git submodule update --recursive --remote
```

### Extra
```
sudo apt install rofi pavucontrol
```
