Vim�UnDo� K���G%r)�~+��t�y¹q=��\K��   s   7          ${pkgs.qbittorrent-nox}/bin/qbittorrent-nox \   Z   7                       b�
K    _�                            ����                                                                                                                                                                                                                                                                                                                                                             b�	�    �                   �               5��                    t                       �
      5�_�                    t        ����                                                                                                                                                                                                                                                                                                                                                             b�	�     �   s   t          Footer5��    s                      �
                     5�_�                    t        ����                                                                                                                                                                                                                                                                                                                                                             b�	�     �   s   t           5��    s                      �
                     5�_�                    Y       ����                                                                                                                                                                                                                                                                                                                                                             b�	�     �   X   Y          $            --profile=${configDir} \5��    X                      �      %               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             b�	�     �          s       �          r    5��                                                  �                                                  �                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b�	�    �          u       5��                                                  �                                                �                                              �                                              5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             b�
     �          u      # based on �         u    5��                       \                  \       5�_�                 	           ����                                                                                                                                                                                                                                                                                                                                                             b�
    �                 5��                          h                      5�_�   	      
          [        ����                                                                                                                                                                                                                                                                                                                                                  V        b�
I     �   Z   [          -            --webui-port=${toString cfg.port}5��    Z                      g      .               5�_�                     Z   7    ����                                                                                                                                                                                                                                                                                                                                                  V        b�
J    �   Y   [   s      7          ${pkgs.qbittorrent-nox}/bin/qbittorrent-nox \5��    Y   5                  d                     5�_�   	             
           ����                                                                                                                                                                                                                                                                                                                                                  V        b�
%     �              5��                          �      �               5�_�   
                          ����                                                                                                                                                                                                                                                                                                                                                  V        b�
&     �              5��                          �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             b�	�     �              �              u   { config, lib, pkgs, ... }:   	with lib;   let   $  cfg = config.services.qbittorrent;   %  configDir = "/var/lib/qbittorrent";     # openFilesLimit = 4096;   in   {   "  options.services.qbittorrent = {       enable = mkOption {         type = types.bool;         default = false;         description = ''   7        Run qBittorrent headlessly as systemwide daemon   	      '';       };           dataDir = mkOption {         type = types.path;   '      default = "/var/lib/qbittorrent";         description = ''   :        The directory where qBittorrent will create files.   	      '';       };           user = mkOption {         type = types.str;         default = "qbittorrent";         description = ''   2        User account under which qBittorrent runs.   	      '';       };           group = mkOption {         type = types.str;         default = "qbittorrent";         description = ''   +        Group under which qBittorrent runs.   	      '';       };           port = mkOption {         type = types.port;         default = 8080;         description = ''            qBittorrent web UI port.   	      '';       };           openFirewall = mkOption {         type = types.bool;         default = false;         description = ''   >        Open services.qBittorrent.port to the outside network.   	      '';       };       !    # openFilesLimit = mkOption {   !    #   default = openFilesLimit;       #   description = ''   7    #     Number of files to allow qBittorrent to open.       #   '';       # };     };         config = mkIf cfg.enable {       :    environment.systemPackages = [ pkgs.qbittorrent-nox ];           # nixpkgs.overlays = [       #   (final: prev: {   J    #     qbittorrent = prev.qbittorrent.override { guiSupport = false; };   
    #   })       # ];       1    networking.firewall = mkIf cfg.openFirewall {   %      allowedTCPPorts = [ cfg.port ];   %      allowedUDPPorts = [ cfg.port ];       };       $    systemd.services.qbittorrent = {   #      after = [ "network.target" ];   )      description = "qBittorrent Daemon";   )      wantedBy = [ "multi-user.target" ];   &      path = [ pkgs.qbittorrent-nox ];         serviceConfig = {           ExecStart = ''   7          ${pkgs.qbittorrent-nox}/bin/qbittorrent-nox \   $            --profile=${configDir} \   -            --webui-port=${toString cfg.port}           '';   N        # To prevent "Quit & shutdown daemon" from working; we want systemd to           # manage it!           Restart = "on-success";           User = cfg.user;           Group = cfg.group;           UMask = "0002";   +        # LimitNOFILE = cfg.openFilesLimit;         };       };       4    users.users = mkIf (cfg.user == "qbittorrent") {         qbittorrent = {           group = cfg.group;           home = cfg.dataDir;           createHome = true;           isSystemUser = true;   0        description = "qBittorrent Daemon user";         };       };           users.groups =   K      mkIf (cfg.group == "qbittorrent") { qbittorrent = { gid = null; }; };     };   }   Footer    5��                    t                       �
      5��