{ config, pkgs, ... }:

let
  dotfiles = config.lib.file.mkOutOfStoreSymlink "/home/atila/Files/Codigos/repos/dotfiles";
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
  };

  home.file.".ssh/config".source = ./.ssh;
  xdg.configFile = {
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
  };

  home.stateVersion = "21.05";
}
