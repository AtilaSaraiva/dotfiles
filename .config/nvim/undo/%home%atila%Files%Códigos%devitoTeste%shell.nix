Vim�UnDo� z<ˡ��{աn�5�!$5%��"��t2�Tee��0                                      b��   	 _�                             ����                                                                                                                                                                                                                                                                                                                                                             b��    �                   �               5��                                          �      5�_�                          ����                                                                                                                                                                                                                                                                                                                                                V       b��     �      
       �             �             5��                                                �                                         �       5�_�                            ����                                                                                                                                                                                                                                                                                                                                      
          V       b��     �                 5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b��     �      	   %      *mach-nix = import (builtins.fetchTarball {   J  url = "https://github.com/DavHau/mach-nix/tarball/${lock.mach-nix.rev}";      sha256 = lock.mach-nix.sha256;   }) {     python = "python37";     inherit pkgs;   };5��                                                �                         1                     �                         ~                     �                          �                      �                         �                     �                         �                     �                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b��     �                    inherit pkgs;5��                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b��    �                (  mach-nix = import (builtins.fetchGit {   /    url = "https://github.com/DavHau/mach-nix";   4    ref = "refs/heads/3.4.0";  # update this version     }) {       python = "python37";     };5��                          �       �               5�_�                          ����                                                                                                                                                                                                                                                                                                                                                 v        b�L     �             �             �             5��                                                �                                         (       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        b�P     �                'lock = fromTOML (readFile ./lock.toml);5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        b�Q    �                 5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        b�y    �                )  lock = fromTOML (readFile ./lock.toml);5��                                 *               5�_�                       6    ����                                                                                                                                                                                                                                                                                                                               6          I       v   I    b��     �               L    url = "https://github.com/DavHau/mach-nix/tarball/${lock.mach-nix.rev}";�             5��       6              (   g              (       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v       b��    �               "    sha256 = lock.mach-nix.sha256;5��                         �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v       b��    �                   sha256 = ;�             5��                      6   �               6       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        b��     �              5��                                                  5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  V        b��   	 �                  5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b�u     �              �              �                 let   !  pyEnv = mach-nix.mkPython rec {           requirements =  ''           jupyterlab           geopandas           pyproj           pygeos           shapely>=1.7.0   	      '';       (    providers.shapely = "sdist,nixpkgs";     };   in   mach-nix.nixpkgs.mkShell {         buildInputs = [   	    pyEnv     ] ;         shellHook = ''   !    jupyter lab --notebook-dir=~/     '';   }5��                                               �                                                  �                                          M      5�_�                          ����                                                                                                                                                                                                                                                                                                                                                 v        b�F     �                �             �               4105d6b6kgvn8kll639vx5adh5hp4gjcl4bs9rjzzyqz7367wbxj65��                                                �                       4                  4       5�_�          	                ����                                                                                                                                                                                                                                                                                                                                                 v        b�A     �                �             �               4105d6b6kgvn8kll639vx5adh5hp4gjcl4bs9rjzzyqz7367wbxj65��                                                �                       4                  4       5�_�      
          	          ����                                                                                                                                                                                                                                                                                                                                                 v        b�     �                   sha256 = ;5��                         �                      5�_�   	               
          ����                                                                                                                                                                                                                                                                                                                                                 v        b�    �             �               D    sha256 = "105d6b6kgvn8kll639vx5adh5hp4gjcl4bs9rjzzyqz7367wbxj6";5��                      6   �               6       5�_�                          ����                                                                                                                                                                                                                                                                                                                            $                     V       b��     �                �             �               let   &mach-nix = import (builtins.fetchGit {   -  url = "https://github.com/DavHau/mach-nix";   2  ref = "refs/heads/3.4.0";  # update this version   }) {     python = "python37";   };       # load your requirements   !machNix = mach-nix.mkPython rec {   6  requirements = builtins.readFile ./requirements.txt;   };       %jupyter = import (builtins.fetchGit {   -  url = https://github.com/tweag/jupyterWith;     ref = "master";     #rev = "some_revision";   }) {};       'iPython = jupyter.kernels.iPythonWith {     name = "mach-nix-jupyter";     python3 = machNix.python;   ,  packages = machNix.python.pkgs.selectPkgs;   };       -jupyterEnvironment = jupyter.jupyterlabWith {     kernels = [ iPython ];   };   in   jupyterEnvironment.env5��                                                �                                        �      5�_�                           ����                                                                                                                                                                                                                                                                                                                            $                     V       b��     �                �             �               let   &mach-nix = import (builtins.fetchGit {   -  url = "https://github.com/DavHau/mach-nix";   2  ref = "refs/heads/3.4.0";  # update this version   }) {     python = "python37";   };       # load your requirements   !machNix = mach-nix.mkPython rec {   6  requirements = builtins.readFile ./requirements.txt;   };       %jupyter = import (builtins.fetchGit {   -  url = https://github.com/tweag/jupyterWith;     ref = "master";     #rev = "some_revision";   }) {};       'iPython = jupyter.kernels.iPythonWith {     name = "mach-nix-jupyter";     python3 = machNix.python;   ,  packages = machNix.python.pkgs.selectPkgs;   };       -jupyterEnvironment = jupyter.jupyterlabWith {     kernels = [ iPython ];   };   in   jupyterEnvironment.env5��                                                �                                        �      5��