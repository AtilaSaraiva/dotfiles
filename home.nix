{ config, pkgs, ... }:

let
  dotfiles = config.lib.file.mkOutOfStoreSymlink "/home/atila/Files/Codigos/repos/dotfiles";
  vim-plug = pkgs.fetchFromGitHub {
    owner = "junegunn";
    repo = "vim-plug";
    rev = "ca0ae0a8b1bd6380caba2d8be43a2a19baf7dbe2";
    sha256 = "1ay2f1liya4ycf7ybiqhz02sywxkw7vhschl2kwl5hvxjahpi9p7";
  };
in
{
  imports = [
    ./zsh.nix
  ];
  programs.home-manager.enable = true;

  home.username = "atila";
  home.homeDirectory = "/home/atila";

  home.packages = with pkgs; [
    hello
  ];

  programs.git = {
    enable = true;
    userName = "AtilaSaraiva";
    userEmail = "atilasaraiva@gmail.com";
    aliases = {
      st = "status";
      co = "checkout";
      br = "branch";
      ci = "commit";
      df = "diff";
      lg = "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative";
      lga = "log --graph --decorate --oneline --abbrev-commit --all";
      lgb = "log --graph --decorate --oneline --abbrev-commit --all --date=relative --name-status";
      cia = "commit --amend";
    };
    extraConfig = {
      core = {
        askpass = "";
      };
    };
  };

  home.file = {
    ".ssh/config".source = ./.ssh/config;
    ".local/share/nvim/site/autoload/plug.vim".source = "${vim-plug}/plug.vim";
    ".julia/config/startup.jl".source = ./julia/startup.jl;
    ".julia/environments" = {
      source = ./julia/environments;
      recursive = true;
    };
    ".tmux.conf".source = ./tmux/tmux.conf;
  };

  xdg = {
    configFile = {
      "vifm/vifmrc".source = ./vifm/vifmrc;
      "sway/config".source = ./sway/config;
      "qutebrowser/autoconfig.yml".source = "${dotfiles}/qutebrowser/autoconfig.yml";
      "qutebrowser/quickmarks".source = "${dotfiles}/qutebrowser/quickmarks";
      "qutebrowser/bookmarks/urls".source = "${dotfiles}/qutebrowser/bookmarks/urls";
      "nvim/init.vim".source = ./nvim/init.vim;
      "nvim/config" = {
        source = ./nvim/config;
        recursive = true;
      };
      "mpv/mpv.conf".source = ./mpv/mpv.conf;
      "zathura/zathurarc".source = ./zathura/zathurarc;
      "kitty/kitty.conf".source = ./kitty/kitty.conf;
      "waybar" = {
        source = ./waybar;
        recursive = true;
      };
      "lf" = {
        source = ./lf;
        recursive = true;
      };
    };
    mimeApps = {
      enable=true;
      defaultApplications = {
        "text/html" = "org.qutebrowser.qutebrowser.desktop";
        "text/plain" = "nvim.desktop";
        "text/markdown" = "nvim.desktop";
        "text/x-markdown" = "nvim.desktop";
        "text/x-org" = "nvim.desktop";
        "text/x-tex" = "nvim.desktop";
        "text/x-c" = "nvim.desktop";
        "text/x-c++" = "nvim.desktop";
        "text/x-c++src" = "nvim.desktop";
        "text/x-csrc" = "nvim.desktop";
        "text/x-chdr" = "nvim.desktop";
        "text/x-c++hdr" = "nvim.desktop";
        "text/x-diff" = "nvim.desktop";
        "text/x-python" = "nvim.desktop";
        "text/x-shellscript" = "nvim.desktop";
        "text/x-makefile" = "nvim.desktop";
        "text/x-cmake" = "nvim.desktop";
        "application/pdf" = "org.pwmt.zathura.desktop";
        "application/epub+zip" = "org.pwmt.zathura.desktop";
        "inode/mount-point" = "kitty-open.desktop";
        "inode/directory" = "kitty-open.desktop";
        "video/x-matroska" = "mpv.desktop";
        "image/png" = "feh.desktop";
        "image/jpeg" = "feh.desktop";
        "application/x-extension-htm"="org.qutebrowser.qutebrowser.desktop";
        "application/x-extension-html"="org.qutebrowser.qutebrowser.desktop";
        "application/x-extension-shtml"="org.qutebrowser.qutebrowser.desktop";
        "application/xhtml+xml"="org.qutebrowser.qutebrowser.desktop";
        "application/x-extension-xhtml"="org.qutebrowser.qutebrowser.desktop";
        "application/x-extension-xht"="org.qutebrowser.qutebrowser.desktop";
      };
    };
  };

  home.stateVersion = "21.05";
}
