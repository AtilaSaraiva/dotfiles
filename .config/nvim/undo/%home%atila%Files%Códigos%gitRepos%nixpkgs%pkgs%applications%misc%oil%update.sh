Vim�UnDo� v�j�1����8�4�����^�'�eks2�}�{#                     7       7   7   7    b�c    _�                             ����                                                                                                                                                                                                                                                                                                                                                             b�     �                   �               5��                       B                   [       5�_�                          ����                                                                                                                                                                                                                                                                                                                                         *       v   *    b�     �                 B#!nix-shell -i bash -p curl jq gnused gnupg common-updater-scripts5��                         4                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                         *       v   *    b�    �                  �               5��                          L                      �                          L                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                         *       v   *    b�     �                  �               5��                          M               �       5�_�                            ����                                                                                                                                                                                                                                                                                                                                         *       v   *    b�    �               5��                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                         *       v   *    b�     �                  �               5��                       ?                 ?       5�_�      	                 �    ����                                                                                                                                                                                                                                                                                                                                         *       v   *    b��    �      	   	       �             5��                                               �                                               5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                         *       v   *    b��     �      
   
       �      	   
    5��                                        P       5�_�   	              
   	        ����                                                                                                                                                                                                                                                                                                                                         *       v   *    b��    �      	           5��                          i                     5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                         N       v   N    b��     �      	   
      Osrc="https://github.com/bisq-network/bisq/releases/download/v$version/$depname"�      	   
    5��              K       J         K       J       5�_�                       =    ����                                                                                                                                                                                                                                                                                                                                         M       v   N    b��     �      	   
      Nsrc="https://github.com/AndreiUlmeyda/oil/archive/refs/tags/${version}.tar.gz"5��       =                  V                     5�_�                       D    ����                                                                                                                                                                                                                                                                                                                                         M       v   N    b��    �      	   
      Msrc="https://github.com/AndreiUlmeyda/oil/archive/refs/tags/$version}.tar.gz"5��       D                  ]                     5�_�                       0    ����                                                                                                                                                                                                                                                                                                                               A          0       v   0    b�     �      
   
      �version="$(curl -s https://api.github.com/repos/bisq-network/bisq/releases| jq '.[] | {name,prerelease} | select(.prerelease==false) | limit(1;.[])' | sed 's/[\"v]//g' | head -n 1)"�         
    5��       0                  �                      �       0                  �                      5�_�                    	        ����                                                                                                                                                                                                                                                                                                                               A          0       v   0    b�     �      	         oil   sreleases| jq '.[] | {name,prerelease} | select(.prerelease==false) | limit(1;.[])' | sed 's/[\"v]//g' | head -n 1)"�      
         sreleases| jq '.[] | {name,prerelease} | select(.prerelease==false) | limit(1;.[])' | sed 's/[\"v]//g' | head -n 1)"5��                         �                      �                         �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                               A          0       v   0    b�     �               /   woil/releases| jq '.[] | {name,prerelease} | select(.prerelease==false) | limit(1;.[])' | sed 's/[\"v]//g' | head -n 1)"�      	         woil/releases| jq '.[] | {name,prerelease} | select(.prerelease==false) | limit(1;.[])' | sed 's/[\"v]//g' | head -n 1)"5��                         �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                               A          0       v   0    b�    �               =version="$(curl -s https://api.github.com/repos/AndreiUlmeyda   x/oil/releases| jq '.[] | {name,prerelease} | select(.prerelease==false) | limit(1;.[])' | sed 's/[\"v]//g' | head -n 1)"�               x/oil/releases| jq '.[] | {name,prerelease} | select(.prerelease==false) | limit(1;.[])' | sed 's/[\"v]//g' | head -n 1)"5��       =                  �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                               �          �       v   �    b��     �         
      �version="$(curl -s https://api.github.com/repos/AndreiUlmeyda/oil/releases| jq '.[] | {name,prerelease} | select(.prerelease==false) | limit(1;.[])' | sed 's/[\"v]//g' | head -n 1)"�         
    5��              �       v   m       �       v       5�_�                       6    ����                                                                                                                                                                                                                                                                                                                               �          �       v   �    b��     �                �      
   
    5��                          4                     �                          4                     �    	                      5                     �    	                     5                    �    	                     5                    �    	                     5                    �    	                  
   5             
       �    	   	                 >                    �    	   	                 >                    �    	   	                 >                    �    	                    A                    �    	                    C                    �    	                    C                    �    	                    C                    �    	                    C                    �    	                    C                    �    	                    C                    �    	                    C                    5�_�                    	        ����                                                                                                                                                                                                                                                                                                                               �          �       v   �    b��    �      	           5��                          4                     5�_�                    	       ����                                                                                                                                                                                                                                                                                                                               �          �       v   �    b�>     �      
          depname="oil-$version"5��                         4                    5�_�                       )    ����                                                                                                                                                                                                                                                                                                                               <          )       v   )    b�E    �   
              ?sha256=$(nix-prefetch-url --type sha256 "file://$PWD/$depname")5��    
   )                 v                    �    
   *                 w                    �    
   *                 w                    5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                               <          )       v   )    b�M   	 �                  �               5��                          }                     �                          }                     �                          ~                     �                         ~                    �                         ~                    �                         ~                    �                         ~                    �                         ~                    �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    �                         �                    �                         �                    �       !                 �                    �       !                 �                    �       !                 �                    �       !                 �                    �       !                 �                    �       !                 �                    �       !              
   �             
       �       *                 �                    �       ,                 �                    �       ,                 �                    �       ,                 �                    �       ,                 �                    �       ,                 �                    �       ,                 �                    5�_�                    	       ����                                                                                                                                                                                                                                                                                                                               <          )       v   )    b�     �                  #!/usr/bin/env nix-shell   2#!nix-shell -i bash -p curl common-updater-scripts       set -eu -o pipefail       �version="$(curl -s --show-error "https://api.github.com/repos/AndreiUlmeyda/oil/releases/latest" | jq -r '.tag_name' | tail -c +1)"       Lsrc="https://github.com/AndreiUlmeyda/oil/archive/refs/tags/$version.tar.gz"   #depname="oil-$version"       /sha256=$(nix-prefetch-url --type sha256 "$src")       3update-source-version oil-buku "$version" "$sha256"5�5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       b��   
 �                3update-source-version oil-buku "$version" "$sha256"�                 �   
             /sha256=$(nix-prefetch-url --type sha256 "$src")�   	              �      
          #depname="oil-$version"�      	          Lsrc="https://github.com/AndreiUlmeyda/oil/archive/refs/tags/$version.tar.gz"5��               L       M   �       L       M       �                         5                    �    	                       N                      �    
           /       0   O      /       0       �                           �                      �               3       4   �      3       4       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       b��     �      	          M#src="https://github.com/AndreiUlmeyda/oil/archive/refs/tags/$version.tar.gz"5��               M       L   �       M       L       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       b��    �   
             0#sha256=$(nix-prefetch-url --type sha256 "$src")5��    
           0       /   N      0       /       5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                V       b�     �      
          ##depname="oil-$version"5��                         4                    5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                V       b�    �      
          #depname="oil-$version"5��                         4                    5�_�                       '    ����                                                                                                                                                                                                                                                                                                                               '          '       v   '    b�a     �   
             /sha256=$(nix-prefetch-url --type sha256 "$src")5��    
           /       0   L      /       0       5�_�      !               	       ����                                                                                                                                                                                                                                                                                                                               '          '       v   '    b�d     �      
          depname="oil-$version"5��                         4                    5�_�       "           !      '    ����                                                                                                                                                                                                                                                                                                                               '          '       v   '    b�e     �                4#update-source-version oil-buku "$version" "$sha256"5��               4       3         4       3       5�_�   !   #           "      *    ����                                                                                                                                                                                                                                                                                                                               *          3       v   3    b�g     �                 3update-source-version oil-buku "$version" "$sha256"5��       *       	           �      	               5�_�   "   $           #      )    ����                                                                                                                                                                                                                                                                                                                               *          3       v   3    b�h    �                 *update-source-version oil-buku "$version" 5��       )                  �                     5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                               *          3       v   3    b��     �                �             �             5��                          b                      �                          b                      �                         b                     �                         b                     �                         b                     �                         b                     �                        e                     �                      
   b              
       �                     (   i              (       5�_�   $   &           %      .    ����                                                                                                                                                                                                                                                                                                                               *          3       v   3    b��     �               /nixpkgs=$("git", "rev-parse", "--show-toplevel"5��       .                  �                      5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                               *          3       v   3    b��     �               .nixpkgs=$("git", "rev-parse", "--show-toplevel5��                         �                      5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                v       b��     �               -nixpkgs=$("git", "rev-parse", --show-toplevel5��                         }                      5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                v       b��     �               +nixpkgs=$("git", "rev-parse --show-toplevel5��                         p                      5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                v       b��     �               (nixpkgs=$("git"rev-parse --show-toplevel5��                         p                      5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                v       b��     �               'nixpkgs=$("gitrev-parse --show-toplevel5��                         p                      5�_�   *   ,           +      
    ����                                                                                                                                                                                                                                                                                                                                                v       b��     �               (nixpkgs=$("git rev-parse --show-toplevel5��       
                  l                      5�_�   +   -           ,      '    ����                                                                                                                                                                                                                                                                                                                                                v       b��    �               'nixpkgs=$(git rev-parse --show-toplevel5��       '                  �                      5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                                                v       b��    �                �             5��                          �                     �                          �                     �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    5�_�   -   /           .      
    ����                                                                                                                                                                                                                                                                                                                                                v       b�    �                0#sha256=$(nix-prefetch-url --type sha256 "$src")5��               0       /   v      0       /       5�_�   .   1           /      )    ����                                                                                                                                                                                                                                                                                                                                                v       b�    �                 )update-source-version oil-buku "$version"5��       )                  �                     �       ,                 �                    �       ,                 �                    �       ,                 �                    �       ,                 �                    �       ,                 �                    �       ,                 �                    5�_�   /   2   0       1   
        ����                                                                                                                                                                                                                                                                                                                                                v       b�@    �   	   
          #depname="oil-$version"5��    	                      ]                     5�_�   1   3           2           ����                                                                                                                                                                                                                                                                                                                                                v       b�Q     �                 5��                                               5�_�   2   7           3   	        ����                                                                                                                                                                                                                                                                                                                                                v       b�R    �      	           5��                          \                     5�_�   3       4       7           ����                                                                                                                                                                                                                                                                                                                                                v       b�b    �      	       5��                                               5�_�   3   5       7   4           ����                                                                                                                                                                                                                                                                                                                                                v       b�Y     �      	        5��                                M               5�_�   4   6           5           ����                                                                                                                                                                                                                                                                                                                                                v       b�Z     �             �               Lsrc="https://github.com/AndreiUlmeyda/oil/archive/refs/tags/$version.tar.gz"5��                          �               M       5�_�   5               6           ����                                                                                                                                                                                                                                                                                                                                                v       b�Z     �                5��                          �                      5�_�   /           1   0           ����                                                                                                                                                                                                                                                                                                                                                v       b�1    �                �               echo $sha2565��                          �                     �                          �                     �                         �                    �                         �                    �                      	   �             	       �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    5�_�                       )    ����                                                                                                                                                                                                                                                                                                                               ,          )       v   )    b�    �             �   
            ?sha256=$(nix-prefetch-url --type sha256 "file://$PWD/$depname")5��    
   )                 u                    5�_�                           ����                                                                                                                                                                                                                                                                                                                               *                 v       b�     �                2#!nix-shell -i bash -p wget common-updater-scripts5��                        0                     5��