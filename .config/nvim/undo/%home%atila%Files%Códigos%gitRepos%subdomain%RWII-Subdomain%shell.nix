Vim�UnDo� J�е������"�����b0��OkTh��9          ''            +       +   +   +    b=�O    _�                             ����                                                                                                                                                                                                                                                                                                                                                             b=�8    �                 import ./env5��                                                   5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b=�@    �                   �               5��                       "                   �       5�_�                            ����                                                                                                                                                                                                                                                                                                                               !                  v        b=ڃ     �                   �               �                  <{ sources ? import ./sources.nix }:     # import the sources   =import sources.nixpkgs                  # and use them again!   "  { overlays = [] ; config = {}; }5��               "                   �               �                       F                   �       5�_�                           ����                                                                                                                                                                                                                                                                                                                               !                  v        b=ڊ     �                let niv = import sources.niv {};5��                         *                      �                          +                      5�_�                            ����                                                                                                                                                                                                                                                                                                                               !                  v        b=ڌ    �               let 5��                         )                      5�_�                           ����                                                                                                                                                                                                                                                                                                                               !                  v        b=ڎ     �                 Fin { inherit niv; } # A glorious expression using the reference to niv5��                         N                      �                          O                      5�_�                           ����                                                                                                                                                                                                                                                                                                                               !                  v        b=ڐ     �                 C  inherit niv; } # A glorious expression using the reference to niv5��                       ]                     �                          ^                      5�_�      
                      ����                                                                                                                                                                                                                                                                                                                               !                  v        b=ڒ    �               in { 5��                         M                      5�_�         	       
          ����                                                                                                                                                                                                                                                                                                                               !                  v        b=ڴ     �                 �             5��                          I                      �                         K                      �                        K                     �                        K                     �                        K                     �                     	   K              	       �       	                 R                     �       	                 R                     �       	                 R                     �       	                 R                     �       	              
   R              
       �                        Y                     �                        Y                     �                        Y                     �                        Y                     �                     	   Y              	       �                        a                     �                        a                     �                        a                     �                        a                     �                        a                     �                        a                     �                        a                     5�_�   
                        ����                                                                                                                                                                                                                                                                                                                               !                  v        b=��    �                 inherit niv;5��                                               �                        �                     �                        �                     �                        �                     5�_�                          ����                                                                                                                                                                                                                                                                                                                                                v       b=��     �             �             5��                          m               �       5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                v       b=��    �   	            D  python-with-my-packages = python3.withpackages my-python-packages;5��    	                                          �    	                                          �    	                                        �    	                                          �    	                                          �    	                                        �    	                                          �    	                                          �    	                                          �    	                                        5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b=��    �             5��                          S                     �                          S                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       b=��     �             �             5��                          ?              =       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b=��     �               	mkShell {     buildInputs = [       python-with-my-packages     ];5��                          ?                     �                         K                    �                         _                    �                         }                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        b=�     �   
            in {5��    
                     =                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        b=�     �   
            in 5��    
                     <                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        b=�     �                 mkShell {5��                         ?                     �                         @                     �                        ?                    �                         A                     �                         @                     �                        ?                    �                         B                     �                         A                     �                         @                     �                        ?                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b=�     �                 5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        b=�     �                  inherit niv pkgs;5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        b=�     �             �             5��                          N                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        b=�   	 �                 inherit niv pkgs;5��                         N                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        b=�   
 �                    inherit niv pkgs;5��                          N                     5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                  V        b=�     �   
          5��    
                      :                     �    
                      :                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b=�    �   
              5��    
                      :                     5�_�                    
   -    ����                                                                                                                                                                                                                                                                                                                                                  V        b=�a    �   	            I  python-with-my-packages = pkgs.python3.withpackages my-python-packages;5��    	   -                                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        b=�x     �      
             �      	       5��                          �                      �                         �                      �       
                 �                      �                          �                      5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                  V        b=�    �      	           5��                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b=�     �                 4} # A glorious expression using the reference to niv5��              2           �      2               5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                             b=�    �                 } 5��                         �                     5�_�       #           !           ����                                                                                                                                                                                                                                                                                                                                                             b=�    �                 }5��                          �                     5�_�   !   $   "       #           ����                                                                                                                                                                                                                                                                                                                                                             b=�#    �                   �             5��                          �                     �                         �                     �                          �                     �                         �                     �                         �                     �                        �                    �                        �                    �                        �                    �                        �                    �                     	   �             	       �              	       
   �      	       
       �              
          �      
              �                        �                     �                         �                    �                        �                    5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                             b=�?     �                     �             �             5��                          �                     �                         �                    �                         �              A       5�_�   $   '           %           ����                                                                                                                                                                                                                                                                                                                                                             b=�A     �               #    export DEVITO_LANGUAGE="openmp"5��                         �                    5�_�   %   (   &       '           ����                                                                                                                                                                                                                                                                                                                                                             b=�G     �               "          export DEVITO_ARCH="gcc"5��               
          �      
              5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                                                             b=�G    �                        export DEVITO_ARCH="gcc"5��                         �                    5�_�   (   +           )           ����                                                                                                                                                                                                                                                                                                                                                             b=�I     �                 5��                          �                     5�_�   )       *       +          ����                                                                                                                                                                                                                                                                                                                                                             b=�N    �                   ''5��                         �                     5�_�   )           +   *          ����                                                                                                                                                                                                                                                                                                                                                             b=�L     �                ;   ''5��                         �                     5�_�   %           '   &           ����                                                                                                                                                                                                                                                                                                                                                             b=�C     �   
            Gpython-with-my-packages = pkgs.python3.withPackages my-python-packages;5��    
                      �                      5�_�   !           #   "   	        ����                                                                                                                                                                                                                                                                                                                                                             b=�     �             	   "  # other python packages you want   ];   Gpython-with-my-packages = pkgs.python3.withPackages my-python-packages;   in   pkgs.mkShell {     buildInputs = [       python-with-my-packages     ];   }5��                         �                     �    	                      �                      �    
                      �                      �                          B                     �                         Q                    �                         c                    �                                             �                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b=��     �                 inherit niv pkgt;5��                        �                     5�_�              
   	          ����                                                                                                                                                                                                                                                                                                                               !                  v        b=ڭ     �                 niv = import sources.niv { };5��                         F                      5��