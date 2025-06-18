{ config, pkgs, ... }:

{
  home.username = "perttu";
  home.homeDirectory = "/home/perttu";
  home.stateVersion = "25.05";

  programs.bash = {
    enable = true;

    shellAliases = {
      ls = "eza --color=always --group-directories-first --git --git-repos";
      ll = "eza -l --color=always --group-directories-first --git --git-repos";
      la = "eza -a --color=always --group-directories-first --git --git-repos";
      lla = "eza -alhF --color=always --group-directories-first --git --git-repos";
    };

    initExtra = ''
      stty werase undef
      bind '\C-w:unix-filename-rubout'

      PS1='\n\[\e[32;1m\][\[\e]0;\u@\h: \w\a\]\u@\h:\W]\$\[\e[0m\] '
    '';
  };

  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 1;
      font.normal = {
        family = "Iosevka NerdFont";
        style = "Regular";
      };
      font.size = 16;
    };
  };

  home.file.".config/bat/config".text = ''
    --style="numbers,changes,grid"
    --paging=auto
  '';


  home.packages = with pkgs; [
    ripgrep
    neovim
    zoxide
    tmux
    stow
    git
    bat
    eza
    fzf
    fd
    gh
  ];

}
