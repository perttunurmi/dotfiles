{ config, pkgs, ... }:

{
  home.username = "perttu";
  home.homeDirectory = "/home/perttu";
  home.stateVersion = "25.05";

  programs.bash = {
    enable = true;

    shellAliases = {
      ls = "eza --color=always --group-directories-first";
      ll = "eza -l --color=always --group-directories-first";
      la = "eza -a --color=always --group-directories-first";
      lla = "eza -alhF --color=always --group-directories-first";
      "reload-rclone" = "systemctl --user restart rCloneMounts.service";
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
    rclone
    tmux
    stow
    git
    bat
    eza
    fzf
    fd
    gh
  ];

  systemd.user.services.rCloneMounts = {
    Unit = {
      Description = "Mount all rClone configurations";
      After = [ "network-online.target" ];
    };
    Service = let home = config.home.homeDirectory; in
      {
        Type = "forking";
        ExecStartPre = "${pkgs.writeShellScript "rClonePre" ''
      remotes=$(${pkgs.rclone}/bin/rclone --config=${home}/.config/rclone/rclone.conf listremotes)
      for remote in $remotes;
      do
      name=$(/usr/bin/env echo "$remote" | /usr/bin/env sed "s/://g")
      /usr/bin/env mkdir -p ${home}/"$name"
      done
      '' }";

        ExecStart = "${pkgs.writeShellScript "rCloneStart" ''
      remotes=$(${pkgs.rclone}/bin/rclone --config=${home}/.config/rclone/rclone.conf listremotes)
      for remote in $remotes;
      do
      name=$(/usr/bin/env echo "$remote" | /usr/bin/env sed "s/://g")
      ${pkgs.rclone}/bin/rclone --config=${home}/.config/rclone/rclone.conf --vfs-cache-mode writes --ignore-checksum mount "$remote" "$name" &
      done
      '' }";

        ExecStop = "${pkgs.writeShellScript "rCloneStop" ''
      remotes=$(${pkgs.rclone}/bin/rclone --config=${home}/.config/rclone/rclone.conf listremotes)
      for remote in $remotes;
      do
      name=$(/usr/bin/env echo "$remote" | /usr/bin/env sed "s/://g")
      /usr/bin/env fusermount -u ${home}/"$name"
      done
      '' }";
      };
    Install.WantedBy = [ "default.target" ];
  };

}
