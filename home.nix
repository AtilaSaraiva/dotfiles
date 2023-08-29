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
  xdg.configFile."nvim/init.vim".source = ./nvim/init.vim;
  xdg.configFile."nvim/config" = {
    source = ./nvim/config;
    recursive = true;
  };
  xdg.configFile."vifm/vifmrc".source = ./vifm/vifmrc;
  xdg.configFile."sway/config".source = ./sway/config;
  xdg.configFile."qutebrowser/autoconfig.yml".source = "${dotfiles}/qutebrowser/autoconfig.yml";
  xdg.configFile."qutebrowser/quickmarks".source = "${dotfiles}/qutebrowser/quickmarks";
  xdg.configFile."qutebrowser/bookmarks/urls".source = "${dotfiles}/qutebrowser/bookmarks/urls";

  home.stateVersion = "21.05";
}
