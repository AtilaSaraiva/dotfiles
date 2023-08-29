{ config, pkgs, ... }:

{
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

  home.stateVersion = "21.05";
}
