{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;

  home.username = "atila";
  home.homeDirectory = "/home/atila";

  home.stateVersion = "21.05";
}
